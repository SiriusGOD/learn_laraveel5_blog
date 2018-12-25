<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;

class CommonController extends Controller
{
    //圖片上傳
    public function upload()
    {
        $file = Input::file('Filedata');
        if($file -> isValid()){
            $entension = $file -> getClientOriginalExtension(); //上傳文件的副檔名
            $newName = date('YmdHis').mt_rand(100,999).'.'.$entension;//上傳檔案改名
            $path = $file -> move(base_path().'/uploads',$newName);//上傳檔案改名 + 移動檔案位置
            $filepath = 'uploads/'.$newName;
            return $filepath;
        }
    }
}
