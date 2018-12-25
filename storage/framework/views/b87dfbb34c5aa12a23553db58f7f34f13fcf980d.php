<?php $__env->startSection('content'); ?>
	<!--头部 开始-->
	<div class="top_box">
		<div class="top_left">
			<div class="logo">後台管理</div>
			<ul>
				<li><a href="<?php echo e(url('/')); ?>" target="_blank" class="active">首頁</a></li>
				<li><a href="<?php echo e(url('admin/info')); ?>" target="main">管理頁</a></li>
			</ul>
		</div>
		<div class="top_right">
			<ul>
				<li>管理員：admin</li>
				<li><a href="<?php echo e(url('admin/pass')); ?>" target="main">修改密碼</a></li>
				<li><a href="<?php echo e(url('admin/quit')); ?>">退出</a></li>
			</ul>
		</div>
	</div>
	<!--头部 结束-->

	<!--左侧导航 开始-->
	<div class="menu_box">
		<ul>
            <li>
            	<h3><i class="fa fa-fw fa-clipboard"></i>內容管理</h3>
                <ul class="sub_menu">
					<li><a href="<?php echo e(url('admin/category/create')); ?>" target="main"><i class="fa fa-fw fa-plus-square"></i>添加分類</a></li>
                    <li><a href="<?php echo e(url('admin/category')); ?>" target="main"><i class="fa fa-fw fa-list-ul"></i>分類列表</a></li>
                    <li><a href="<?php echo e(url('admin/article/create')); ?>" target="main"><i class="fa fa-fw fa-plus-square"></i>添加文章</a></li>
                    <li><a href="<?php echo e(url('admin/article')); ?>" target="main"><i class="fa fa-fw fa-list-ul"></i>文章列表</a></li>
                </ul>
            </li>
            <li>
            	<h3><i class="fa fa-fw fa-cog"></i>系统設置</h3>
                <ul class="sub_menu" style="display: block;">
					<li><a href="<?php echo e(url('admin/links')); ?>" target="main"><i class="fa fa-fw fa-cubes"></i>網站鏈結</a></li>
					<li><a href="<?php echo e(url('admin/navs')); ?>" target="main"><i class="fa fa-fw fa-navicon"></i>自訂義導航</a></li>
                    <li><a href="<?php echo e(url('admin/config')); ?>" target="main"><i class="fa fa-fw fa-cogs"></i>網站配置</a></li>
                </ul>
            </li>
        </ul>
	</div>
	<!--左侧导航 结束-->

	<!--主体部分 开始-->
	<div class="main_box">
		<iframe src="<?php echo e(url('admin/info')); ?>" frameborder="0" width="100%" height="100%" name="main"></iframe> 
	</div>
	<!--主体部分 结束-->

	<!--底部 开始-->
	<div class="bottom_box">
		CopyRight © 2015. Powered By <a href="http://www.houdunwang.com">http://www.houdunwang.com</a>.
	</div>
	<!--底部 结束-->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>