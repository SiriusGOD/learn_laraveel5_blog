<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Model\Navs;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class NavsController extends Controller
{
   //get.admin/navs  全部自訂義導航列表
   public function index(){
        $data = Navs::orderBy('nav_order','asc')->get();
        return view('admin.navs.index',compact('data'));
    }

    public function changeorder(){
        $input = Input::all();
        $navs = Navs::find($input['nav_id']);
        $navs->nav_order = $input['nav_order'];
        $re = $navs->update();
        if($re){
            $data = [
                'status' => 0,
                'msg' => '自訂義導航排序更新成功！',
            ];
        }else{
            $data = [
                'status' => 1,
                'msg' => '自訂義導航排序更新失敗，請稍後重試！',
            ];
        }
        return $data;
    }

    //get.admin/navs/create  添加自訂義導航
    public function create(){
       return view('admin/navs/add');
    }

    //post.admin/navs  添加自訂義導航的提交方法
    public function store(){
        $input = Input::except('_token');//除_token欄位資料外，其他欄位資料輸入

        $rules = [
            'nav_name' => 'required',
            'nav_url' => 'required',
        ];//規則->nav_name不能為空值

        $message = [ //把警告訊息換成中文
            'nav_name.required'=>'自訂義導航名稱不能為空！',
            'nav_url.required'=>'自訂義導航URL不能為空！',
        ];

        $validator = Validator::make($input, $rules, $message);//判斷密碼規則是否成立
        if($validator->passes()){
            $re = Navs::create($input);
            if($re){
                return redirect('admin/navs');
            }else{
                return back()->with('errors','自訂義導航新增失敗，請稍後重試!');
            }
        }else{
            return back()->withErrors($validator);
        }
    }

    //get.admin/navs/{navs}/edit  編輯自訂義導航
    public function edit($nav_id){
        $field = Navs::find($nav_id);
        return view('admin/navs/edit',compact('field'));
    }
    //put.admin/navs/{navs}  更新自訂義導航
    public function update($nav_id){
        $input = Input::except('_token','_method');
        $re = Navs::where('nav_id',$nav_id)->update($input);
        if($re){
            return redirect('admin/navs');
        }else{
            return back()->with('errors','自訂義導航跟新失敗，請稍後重試!');
        }
    }

    //delete.admin/navs/{navs} 刪除單個自訂義導航
    public function destroy($nav_id){
        $re = Navs::where('nav_id',$nav_id)->delete();
        if($re){
            $data = [
                'status' => 0,
                'msg' => '自訂義導航刪除成功!'
            ];
        }else{
            $data = [
                'status' => 1,
                'msg' => '自訂義導航刪除失敗，請稍後重試!'
            ];
        }
        return $data;
    }
}
