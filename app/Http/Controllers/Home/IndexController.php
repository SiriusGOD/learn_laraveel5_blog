<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Model\Article;
use App\Http\Model\Links;
use App\Http\Model\Category;

class IndexController extends CommonController
{
    public function index(){
        //点击量最高的6篇文章（站长推荐）
        $pics = Article::orderBy('art_view','desc')->take(6)->get();

        //点击量最高的篇5文章
        $hot = Article::orderBy('art_view','desc')->take(5)->get();

        //最新发布文章8篇
        $new = Article::orderBy('art_time','desc')->take(8)->get();

        //图文列表5篇（带分页）
        $data = Article::orderBy('art_time','desc')->paginate(5);

        //友情链接
        $links = Links::orderBy('link_order','asc')->get();

        return view('home.index',compact('hot','new','pics','data','links'));
    } 

    public function cate($cate_id){
        //圖文列表4篇（带分頁）
        $data = Article::where('cate_id',$cate_id)->orderBy('art_time','desc')->paginate(4);
        
        //當前分類的子分類
        $submenu = Category::where('cate_pid',$cate_id)->get();

        //查看次数自增
        Category::where('cate_id',$cate_id)->increment('cate_view');
        

        $field = Category::find($cate_id);
        return view('home.list',compact('field','data','submenu'));
    } 

    public function article($art_id){
        $field = Article::Join('blog_category','blog_article.cate_id','=','blog_category.cate_id')->where('art_id',$art_id)->first();
        //查看次数自增
        Article::where('art_id',$art_id)->increment('art_view');

        //上一篇
        $article['pre'] = Article::where('art_id','<',$art_id)->orderBy('art_id','desc')->first();
        //下一篇
        $article['next'] = Article::where('art_id','>',$art_id)->orderBy('art_id','asc')->first();

        //相關文章
        $data = Article::where('cate_id',$field->cate_id)->orderBy('art_id','desc')->take(6)->get();

        return view('home.new',compact('field','article','data'));

    } 
}
