<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use App\Http\Model\User;
use Illuminate\Support\Facades\Crypt;

class IndexController extends CommonController
{
    public function index(){
        return view('admin.index');
    }
    public function info(){
        return view('admin.info');
    }
    //跟改超級管理員密碼
    public function pass(){
        if($input = Input::all()){
            $rules = [
                'password' => 'required|between:6,20|confirmed',
            ];//規則->password不能為空值

            $message = [ //把警告訊息換成中文
                'password.required'=>'新密碼不能為空！',
                'password.between'=>'新密碼必須在6~20為之間！',
                'password.confirmed'=>'新密碼和確認密碼不一致！',
            ];

            $validator = Validator::make($input, $rules, $message);//判斷密碼規則是否成立
            if($validator->passes()){
                $user = User::first();//取出資料表第一筆資料
                $_password = Crypt::decrypt($user->user_pass); //解密
                if($input['password_o']==$_password){
                    $user->user_pass = Crypt::encrypt($input['password']);
                    $user->update();//更新admin密碼
                    return back()->with('errors','密碼修改成功!');
                }else{
                    return back()->with('errors','原密碼錯誤！');
                }
            }else{
                return back()->withErrors($validator);
            }
        }else{
            return view('admin.pass');
        }
    }
}
