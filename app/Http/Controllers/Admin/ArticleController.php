<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Model\Category;
use Illuminate\Support\Facades\Input;
use App\Http\Model\Article;
use Illuminate\Support\Facades\Validator;

class ArticleController extends CommonController
{
    //get.admin/article  全部文章列表
     public function index(){
        $data = Article::orderBy('art_id','desc')->paginate(4);
        return view('admin.article.index',compact('data'));
    }

    //get.admin/article/create  添加分類
    public function create(){
        $data = (new Category)->tree();
        return view('admin/article/add',compact('data'));
    }

    //post.admin/article  添加文章的提交方法
    public function store(){
        $input = Input::except('_token');
        $input['art_time'] = time();

        $rules = [
            'art_title'=>'required',
            'art_content'=>'required',
        ];

        $message = [
            'art_title.required'=>'文章名稱不能為空！',
            'art_content.required'=>'文章内容不能為空！',
        ];

        $validator = Validator::make($input,$rules,$message);

        if($validator->passes()){
            $re = Article::create($input);
            if($re){
                return redirect('admin/article');
            }else{
                return back()->with('errors','資料新增失敗，請稍後重試！');
            }
        }else{
            return back()->withErrors($validator);
        }
    }

    //get.admin/article/{article}/edit  編輯文章
    public function edit($art_id){
        $data = (new Category)->tree();
        $field = Article::find($art_id);
        return view('admin.article.edit',compact('data','field'));
    }

    //put.admin/article/{article}    更新文章
    public function update($art_id){
        $input = Input::except('_token','_method');
        $re = Article::where('art_id',$art_id)->update($input);
        if($re){
            return redirect('admin/article');
        }else{
            return back()->with('errors','文章更新失敗，請稍後重試！');
        }
    }

    //delete.admin/article/{article} 刪除單個文章
    public function destroy($art_id){
        $re = Article::where('art_id',$art_id)->delete();
        if($re){
            $data = [
                'status' => 0,
                'msg' => '文章刪除成功!'
            ];
        }else{
            $data = [
                'status' => 1,
                'msg' => '文章刪除失敗，請稍後重試!'
            ];
        }
        return $data;
    }
}
