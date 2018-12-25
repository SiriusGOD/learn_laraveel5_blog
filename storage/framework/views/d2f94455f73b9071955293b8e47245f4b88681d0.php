<?php $__env->startSection('content'); ?>
    <!--面包屑导航 开始-->
    <div class="crumb_warp">
        <!--<i class="fa fa-bell"></i> 欢迎使用登陆网站后台，建站的首选工具。-->
        <i class="fa fa-home"></i> <a href="<?php echo e(url('admin/info')); ?>">首頁</a> &raquo; 分類管理
    </div>
    <!--面包屑导航 结束-->

	

    <!--搜索结果页面 列表 开始-->
    <form action="#" method="post">
        <div class="result_wrap">
            <div class="result_title">
                <h3>分類列表</h3>
            </div>
            <!--快捷导航 开始-->
            <div class="result_content">
                <div class="short_wrap">
                    <a href="<?php echo e(url('admin/category/create')); ?>"><i class="fa fa-plus"></i>添加分類</a>
                    <a href="<?php echo e(url('admin/category')); ?>"><i class="fa fa-recycle"></i>全部分類</a>
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
                        <th>分類名稱</th>
                        <th>標題</th>
                        <th>查看次數</th>
                        <th>操作</th>
                    </tr>
                    <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td class="tc">
                            <input type="text" onchange="changeOrder(this,<?php echo e($v->cate_id); ?>)" value="<?php echo e($v->cate_order); ?>">
                        </td>
                        <td class="tc"><?php echo e($v->cate_id); ?></td>
                        <td>
                            <a href="#"><?php echo e($v->_cate_name); ?></a>
                        </td>
                        <td><?php echo e($v->cate_title); ?></td>
                        <td><?php echo e($v->cate_view); ?></td>
                        <td>
                            <a href="<?php echo e(url('admin/category/'.$v->cate_id.'/edit')); ?>">修改</a>
                            <a href="javascript:;" onclick="delCate(<?php echo e($v->cate_id); ?>)">删除</a>
                        </td>
                    </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </table>



            </div>
        </div>
    </form>
    <!--搜索结果页面 列表 结束-->

    <script>
        function changeOrder(obj,cate_id){
            var cate_order = $(obj).val();
            $.post("<?php echo e(url('admin/cate/changeorder')); ?>",{'_token':'<?php echo e(csrf_token()); ?>','cate_id':cate_id,'cate_order':cate_order},function(data){
                if(data.status == 0){
                    layer.msg(data.msg, {icon: 6});
                }else{
                    layer.msg(data.msg, {icon: 5});
                }
            });
        }

        //刪除分類
        function delCate(cate_id) {
            layer.confirm('您確定要刪除這個分類嗎？', {
                btn: ['確定','取消'] //按钮
            }, function(){
                $.post("<?php echo e(url('admin/category/')); ?>/"+cate_id,{'_method':'delete','_token':"<?php echo e(csrf_token()); ?>"},function (data) {
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