<?php $__env->startSection('content'); ?>

    <!--面包屑导航 开始-->
    <div class="crumb_warp">
        <!--<i class="fa fa-bell"></i> 欢迎使用登陆网站后台，建站的首选工具。-->
        <i class="fa fa-home"></i> <a href="<?php echo e(url('admin/info')); ?>">首页</a> &raquo;文章管理
    </div>
    <!--面包屑导航 结束-->

	
    <!--结果页快捷搜索框 结束-->

    <!--搜索结果页面 列表 开始-->
    <form action="#" method="post">
        <div class="result_wrap">
            <!--快捷导航 开始-->
            <div class="result_title">
               <h3>文章列表</h3>
            </div>
            <div class="result_content">
                <div class="short_wrap">
                    <a href="<?php echo e(url('admin/article/create')); ?>"><i class="fa fa-plus"></i>添加文章</a>
                    <a href="<?php echo e(url('admin/article')); ?>"><i class="fa fa-recycle"></i>全部文章</a>
                </div>
            </div>
            <!--快捷导航 结束-->
        </div>

        <div class="result_wrap">
            <div class="result_content">
                <table class="list_tab">
                    <tr>
                        <th class="tc">ID</th>
                        <th>標題</th>
                        <th>點擊</th>
                        <th>編輯</th>
                        <th>發布時間</th>
                        <th>操作</th>
                    </tr>
                    <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td class="tc"><?php echo e($v->art_id); ?></td>
                    <td>
                        <a href="#"><?php echo e($v->art_title); ?></a>
                    </td>
                    <td><?php echo e($v->art_view); ?></td>
                    <td><?php echo e($v->art_editor); ?></td>
                    <td><?php echo e(date('Y-m-d',$v->art_time)); ?></td>
                    <td>
                        <a href="<?php echo e(url('admin/article/'.$v->art_id.'/edit')); ?>">修改</a>
                        <a href="javascript:;" onclick="delArt(<?php echo e($v->art_id); ?>)">刪除</a>
                    </td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </table>
                <div class="page_list">
                    <?php echo e($data->links()); ?>

                </div>
            </div>
        </div>
    </form>
    <!--搜索结果页面 列表 结束-->

    <style>
        .result_content ul li span {
            font-size: 15px;
            padding: 6px 12px;
        }
    </style>
    <script>
        //删除分类
        function delArt(art_id) {
            layer.confirm('您確定要刪除這篇文章嗎？', {
                btn: ['確定','取消'] //按钮
            }, function(){
                $.post("<?php echo e(url('admin/article/')); ?>/"+art_id,{'_method':'delete','_token':"<?php echo e(csrf_token()); ?>"},function (data) {
                    if(data.status==0){
                        location.href = location.href;
                        layer.msg(data.msg, {icon: 6});
                    }else{
                        layer.msg(data.msg, {icon: 5});
                    }
                });
    //            layer.msg('的确很重要', {icon: 1});
            }, function(){
    
            });
        }
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>