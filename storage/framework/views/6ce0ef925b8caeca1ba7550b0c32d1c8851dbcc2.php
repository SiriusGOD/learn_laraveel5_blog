<?php $__env->startSection('content'); ?>
    <!--面包屑导航 开始-->
    <div class="crumb_warp">
        <!--<i class="fa fa-bell"></i> 欢迎使用登陆网站后台，建站的首选工具。-->
        <i class="fa fa-home"></i> <a href="<?php echo e(url('admin/info')); ?>">首頁</a> &raquo; 鏈結管理
    </div>
    <!--面包屑导航 结束-->

	

    <!--搜索结果页面 列表 开始-->
    <form action="#" method="post">
        <div class="result_wrap">
            <div class="result_title">
                <h3>鏈結列表</h3>
            </div>
            <!--快捷导航 开始-->
            <div class="result_content">
                <div class="short_wrap">
                    <a href="<?php echo e(url('admin/links/create')); ?>"><i class="fa fa-plus"></i>添加鏈結</a>
                    <a href="<?php echo e(url('admin/links')); ?>"><i class="fa fa-recycle"></i>全部鏈結</a>
                </div>
            </div>
            <!--快捷导航 结束-->
        </div>

        <div class="result_wrap">
            <div class="result_content">
                <table class="list_tab">
                    <tr>
                        <th class="tc" width="5%">排序</th>
                        <th class="tc" width="5%">ID</th>
                        <th>鏈結名稱</th>
                        <th>鏈結標題</th>
                        <th>鏈結網址</th>
                        <th>操作</th>
                    </tr>
                    <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td class="tc">
                            <input type="text" onchange="changeOrder(this,<?php echo e($v->link_id); ?>)" value="<?php echo e($v->link_order); ?>">
                        </td>
                        <td class="tc"><?php echo e($v->link_id); ?></td>
                        <td>
                            <a href="#"><?php echo e($v->link_name); ?></a>
                        </td>
                        <td><?php echo e($v->link_title); ?></td>
                        <td><?php echo e($v->link_url); ?></td>
                        <td>
                            <a href="<?php echo e(url('admin/links/'.$v->link_id.'/edit')); ?>">修改</a>
                            <a href="javascript:;" onclick="delLinks(<?php echo e($v->link_id); ?>)">删除</a>
                        </td>
                    </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </table>



            </div>
        </div>
    </form>
    <!--搜索结果页面 列表 结束-->

    <script>
        function changeOrder(obj,link_id){
            var link_order = $(obj).val();
            $.post("<?php echo e(url('admin/links/changeorder')); ?>",{'_token':'<?php echo e(csrf_token()); ?>','link_id':link_id,'link_order':link_order},function(data){
                if(data.status == 0){
                    layer.msg(data.msg, {icon: 6});
                }else{
                    layer.msg(data.msg, {icon: 5});
                }
            });
        }

        //刪除鏈結
        function delLinks(link_id) {
            layer.confirm('您確定要刪除這個鏈結嗎？', {
                btn: ['確定','取消'] //按钮
            }, function(){
                $.post("<?php echo e(url('admin/links/')); ?>/"+link_id,{'_method':'delete','_token':"<?php echo e(csrf_token()); ?>"},function (data) {
                    if(data.status == 0){
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