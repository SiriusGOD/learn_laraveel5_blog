<?php $__env->startSection('content'); ?>
    <!--面包屑导航 开始-->
    <div class="crumb_warp">
        <!--<i class="fa fa-bell"></i> 欢迎使用登陆网站后台，建站的首选工具。-->
    <i class="fa fa-home"></i> <a href="<?php echo e(url('admin/info')); ?>">首頁</a> &raquo; 鏈結管理
    </div>
    <!--面包屑导航 结束-->

	<!--结果集标题与导航组件 开始-->
	<div class="result_wrap">
        <div class="result_title">
            <h3>添加鏈結</h3>
            <?php if(count($errors)>0): ?>
                <div class="mark">
                    <?php if(is_object($errors)): ?>
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <p><?php echo e($error); ?></p>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <p><?php echo e($errors); ?></p>
                    <?php endif; ?>
                </div>
             <?php endif; ?>
        </div>
        <div class="result_content">
            <div class="short_wrap">
                <a href="<?php echo e(url('admin/links/create')); ?>"><i class="fa fa-plus"></i>添加鏈結</a>
                <a href="<?php echo e(url('admin/links')); ?>"><i class="fa fa-recycle"></i>全部鏈結</a>
            </div>
        </div>
    </div>
    <!--结果集标题与导航组件 结束-->
    
    <div class="result_wrap">
    <form action="<?php echo e(url('admin/links')); ?>" method="post">
            <?php echo e(csrf_field()); ?>

            <table class="add_tab">
                <tbody>
                    <tr>
                        <th><i class="require">*</i>鏈結名稱：</th>
                        <td>
                            <input type="text" name="link_name">
                            <span><i class="fa fa-exclamation-circle yellow"></i>鏈結名稱必須填寫</span>
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require">*</i>URL：</th>
                            <td>
                                <input type="text" class="lg" name="link_url" value="http://">
                            </td>
                        </tr>
                    <tr>
                        <th>鏈結標題：</th>
                        <td>
                            <input type="text" class="lg" name="link_title">
                        </td>
                    </tr>
                    <tr>
                        <th>排序：</th>
                        <td>
                            <input type="text" class="sm" name="link_order" value="0">
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input type="submit" value="提交">
                            <input type="button" class="back" onclick="history.go(-1)" value="返回">
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>