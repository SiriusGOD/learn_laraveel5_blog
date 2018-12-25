<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Model\Links;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class LinksController extends Controller
{
   //get.admin/links  全部鏈結列表
   public function index(){
        $data = Links::orderBy('link_order','asc')->get();
        return view('admin.links.index',compact('data'));
    }

    public function changeorder(){
        $input = Input::all();
        $links = Links::find($input['link_id']);
        $links->link_order = $input['link_order'];
        $re = $links->update();
        if($re){
            $data = [
                'status' => 0,
                'msg' => '鏈結排序更新成功！',
            ];
        }else{
            $data = [
                'status' => 1,
                'msg' => '鏈結排序更新失敗，請稍後重試！',
            ];
        }
        return $data;
    }

    //get.admin/links/create  添加鏈結
    public function create(){
       return view('admin/links/add');
    }

    //post.admin/links  添加鏈結的提交方法
    public function store(){
        $input = Input::except('_token');//除_token欄位資料外，其他欄位資料輸入

        $rules = [
            'link_name' => 'required',
            'link_url' => 'required',
        ];//規則->link_name不能為空值

        $message = [ //把警告訊息換成中文
            'link_name.required'=>'鏈結名稱不能為空！',
            'link_url.required'=>'鏈結URL不能為空！',
        ];

        $validator = Validator::make($input, $rules, $message);//判斷密碼規則是否成立
        if($validator->passes()){
            $re = Links::create($input);
            if($re){
                return redirect('admin/links');
            }else{
                return back()->with('errors','鏈結新增失敗，請稍後重試!');
            }
        }else{
            return back()->withErrors($validator);
        }
    }

    //get.admin/links/{links}/edit  編輯鏈結
    public function edit($link_id){
        $field = Links::find($link_id);
        return view('admin/links/edit',compact('field'));
    }
    //put.admin/links/{links}  更新鏈結
    public function update($link_id){
        $input = Input::except('_token','_method');
        $re = Links::where('link_id',$link_id)->update($input);
        if($re){
            return redirect('admin/links');
        }else{
            return back()->with('errors','鏈結跟新失敗，請稍後重試!');
        }
    }

    //delete.admin/links/{links} 刪除單個鏈結
    public function destroy($link_id){
        $re = Links::where('link_id',$link_id)->delete();
        if($re){
            $data = [
                'status' => 0,
                'msg' => '鏈結刪除成功!'
            ];
        }else{
            $data = [
                'status' => 1,
                'msg' => '鏈結刪除失敗，請稍後重試!'
            ];
        }
        return $data;
    }
}
