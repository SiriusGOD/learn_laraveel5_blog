<?php $__env->startSection('info'); ?>
    <title><?php echo e(Config::get('web.web_title')); ?> - <?php echo e(Config::get('web.seo_title')); ?></title>
    <meta name="keywords" content="<?php echo e(Config::get('web.keywords')); ?>" />
    <meta name="description" content="<?php echo e(Config::get('web.description')); ?>" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="banner">
        <section class="box">
            <ul class="texts">
                <p>打了死结的青春，捆死一颗蒼白絕望的靈魂。</p>
                <p>為自己掘一個墳墓来葬心，红塵一夢，不再追尋。</p>
                <p>加了鎖的青春，不會再因誰而推开心門。</p>
            </ul>
            <div class="avatar"><a href="#"><span>后盾</span></a> </div>
        </section>
    </div>
    <div class="template">
        <div class="box">
            <h3>
                <p><span>站長</span>推薦 Recommend</p>
            </h3>
            <ul>
                <?php $__currentLoopData = $pics; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li><a href="<?php echo e(url('a/'.$p->art_id)); ?>"  target="_blank"><img src="<?php echo e(url($p->art_thumb)); ?>"></a><span><?php echo e($p->art_title); ?></span></li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
        </div>
    </div>
    <article class="blogs">
        <h2 class="title_tj">
            <p>文章<span>推荐</span></p>
        </h2>
        <div class="bloglist left">
            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <h3><?php echo e($d->art_title); ?></h3>
            <figure><img src="<?php echo e(url($d->art_thumb)); ?>"></figure>
            <ul>
                <p><?php echo e($d->art_description); ?></p>
                <a title="<?php echo e($d->art_title); ?>" href="<?php echo e(url('a/'.$d->art_id)); ?>" target="_blank" class="readmore">閱讀全文>></a>
            </ul>
            <p class="dateview"><span><?php echo e(date('Y-m-d',$d->art_time)); ?></span><span>作者：<?php echo e($d->art_editor); ?></span></p>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <div class="page">
                <?php echo e($data->links()); ?>

            </div>
        </div>
        <aside class="right">
            <!-- Baidu Button BEGIN -->
            <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare"><a class="bds_tsina"></a><a class="bds_qzone"></a><a class="bds_tqq"></a><a class="bds_renren"></a><span class="bds_more"></span><a class="shareCount"></a></div>
            <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script>
            <script type="text/javascript" id="bdshell_js"></script>
            <script type="text/javascript">
                document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
            </script>
            <!-- Baidu Button END -->

            <div class="news" style="float:left;">
                ##parent-placeholder-040f06fd774092478d450774f5ba30c5da78acc8##
                <h3 class="links">
                    <p>友情<span>鏈結</span></p>
                </h3>
                <ul class="website">
                    <?php $__currentLoopData = $links; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $l): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li><a href="<?php echo e($l->link_url); ?>" target="_blank"><?php echo e($l->link_name); ?></a></li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </ul>
            </div>

        </aside>
    </article>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.home', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>