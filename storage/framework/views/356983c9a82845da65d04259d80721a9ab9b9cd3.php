<?php $__env->startSection('content'); ?>
	<!--面包屑导航 开始-->
	<div class="crumb_warp">
		<!--<i class="fa fa-bell"></i> 欢迎使用登陆网站后台，建站的首选工具。-->
		<i class="fa fa-home"></i> <a href="<?php echo e(url('admin/info')); ?>">首頁</a> &raquo; 系統基本訊息
	</div>
	<!--面包屑导航 结束-->
	
	<!--结果集标题与导航组件 开始-->
	<div class="result_wrap">
        <div class="result_title">
            <h3>快捷操作</h3>
        </div>
        <div class="result_content">
            <div class="short_wrap">
                <a href="#"><i class="fa fa-plus"></i>新增文章</a>
                <a href="#"><i class="fa fa-recycle"></i>批量刪除</a>
                <a href="#"><i class="fa fa-refresh"></i>更新排序</a>
            </div>
        </div>
    </div>
    <!--结果集标题与导航组件 结束-->

	
    <div class="result_wrap">
        <div class="result_title">
            <h3>系统基本信息</h3>
        </div>
        <div class="result_content">
            <ul>
                <li>
                    <label>操作系统</label><span><?php echo e(PHP_OS); ?></span>
                </li>
                <li>
                    <label>運行環境</label><span><?php echo e($_SERVER['SERVER_SOFTWARE']); ?></span>
                </li>
                <li>
                    <label>PHP運行方式</label><span>apache2handler</span>
                </li>
                <li>
                    <label>静静設計-版本</label><span>v-0.1</span>
                </li>
                <li>
                    <label>上傳附件限制</label><span><?php echo get_cfg_var ("upload_max_filesize")?get_cfg_var ("upload_max_filesize"):"不允許上傳限制"; ?></span>
                </li>
                <li>
                    <label>台北時間</label><span><?php echo date('Y年m月d日 H時i分s秒')?></span>
                </li>
                <li>
                    <label>服務器域名/IP</label><span><?php echo e($_SERVER['SERVER_NAME']); ?> [ <?php echo e($_SERVER['SERVER_ADDR']); ?> ]</span>
                </li>
                <li>
                    <label>Host</label><span><?php echo e($_SERVER['SERVER_ADDR']); ?></span>
                </li>
            </ul>
        </div>
    </div>


    <div class="result_wrap">
        <div class="result_title">
            <h3>使用幫助</h3>
        </div>
        <div class="result_content">
            <ul>
                <li>
                    <label>官方交流網站：</label><span><a href="<?php echo e(url('https://laravel.com/')); ?>">https://laravel.com/</a></span>
                </li>
            </ul>
        </div>
    </div>
	<!--结果集列表组件 结束-->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>