<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Crypt;
use App\Http\Model\User;
require_once 'resources/org/code/Code.class.php';

class LoginController extends CommonController
{
    public function login(){
        if($input = Input::all()){
            $code = new \Code;//加斜槓可以讓他去底層找
            $_code = $code->get();
            if(strtoupper($input['code']) != $_code){//strtoupper 把英文小寫轉大寫
                return back()->with('msg','驗證碼錯誤!');
            }
            $user = User::first();
            if($user->user_name != $input['user_name'] || Crypt::decrypt($user->user_pass) != $input['user_pass']){
                return back()->with('msg','帳號或密碼錯誤!');
            }
            session(['user'=>$user]);
            //dd(session('user'));
            return redirect('admin');;

        }else{     
            return view('admin.login');
        }
        
    }

    public function code(){
        $code = new \Code;//家斜槓可以讓他去底層找
        $code->make();
    }

    public function test(){
        $password = "1234";
        echo Crypt::encrypt($password);
    }

    // public function getcode(){
    //     $code = new \Code;//家斜槓可以讓他去底層找
    //     echo $code->get();
    // }
    public function quit(){
        session(['user'=>null]);
        return redirect('admin/login');
    }
}
