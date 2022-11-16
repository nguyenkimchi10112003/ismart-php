<?php
get_header();
?>
<div id="main-content-wp" class="home-page clearfix">
    <div class="wp-inner">
        <div class="main-content fl-right">
            <div class="section" id="slider-wp">
                <div class="section-detail">
                    <?php
                    foreach ($list_slider as $item) {
                    ?>
                        <div class="item">
                            <img src="admin/uploads/slider/<?php echo $item['slider_thumb']; ?>" alt="">
                        </div>
                    <?php
                    }
                    ?>
                </div>
            </div>
            <?php
            if (!empty($list_service)) {
            ?>
                <div class="section" id="support-wp">
                    <div class="section-detail">
                        <ul class="list-item clearfix">
                            <?php
                            foreach ($list_service as $item) {
                            ?>
                                <li>
                                    <div class="thumb">
                                        <img src="admin/uploads/service/<?php echo $item['service_thumb']; ?>">
                                    </div>
                                    <h3 class="title"><?php echo $item['service_name'] ?></h3>
                                    <p class="desc"><?php echo $item['service_desc'] ?></p>
                                </li>
                            <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            <?php
            }
            ?>
            <div class="section" id="feature-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Sản phẩm nổi bật</h3>
                </div>
                <?php
                if (!empty($list_product)) {
                ?>
                    <div class="section-detail">
                        <ul class="list-item">
                            <?php
                            foreach ($list_product as $item) {
                                if ($item['outstanding_product'] == 1) {
                            ?>
                                    <li style="text-align: center">
                                        <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="thumb" style="display: inline-block; width: 125px; height: 125px">
                                            <img src="admin/uploads/product/<?php echo $item['product_thumb'] ?>">
                                        </a>
                                        <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="product-name"><?php echo $item['product_name']; ?></a>
                                        <div class="price">
                                            <span class="new"><?php echo currency_format($item['price']) ?></span>
                                            <span class="old"><?php if(!empty($item['original_price'])) echo currency_format($item['original_price']) ?></span>
                                        </div>
                                        <div class="action clearfix">
                                            <a href="?mod=cart&action=add&id=<?php echo $item['product_id']; ?>" title="" class="add-cart fl-left">Thêm giỏ hàng</a>
                                            <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="buy-now fl-right">Mua ngay</a>
                                        </div>
                                    </li>
                            <?php
                                }
                            }
                            ?>
                        </ul>
                    </div>
                <?php
                }
                ?>
            </div>
            <div class="section" id="list-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Điện thoại</h3>
                </div>
                <?php
                if (!empty($list_product)) {
                ?>
                    <div class="section-detail">
                        <ul class="list-item clearfix">
                            <?php
                            foreach ($list_product as $item) {
                                if ($item['cat_id'] == 1 || $item['parent_id'] == 1) {
                            ?>
                                    <li style="text-align: center">
                                        <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="thumb" style="display: inline-block; width: 125px; height: 125px">
                                            <img src="admin/uploads/product/<?php echo $item['product_thumb']; ?>">
                                        </a>
                                        <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="product-name"><?php echo $item['product_name'] ?></a>
                                        <div class="price">
                                            <span class="new"><?php echo currency_format($item['price']) ?></span>
                                            <span class="old"><?php if(!empty($item['original_price'])) echo currency_format($item['original_price']) ?></span>
                                        </div>
                                        <div class="action clearfix">
                                            <a href="?mod=cart&action=add&id=<?php echo $item['product_id']; ?>" title="Thêm giỏ hàng" class="add-cart fl-left">Thêm giỏ hàng</a>
                                            <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="Mua ngay" class="buy-now fl-right">Mua ngay</a>
                                        </div>
                                    </li>
                            <?php
                                }
                            }
                            ?>
                        </ul>
                    </div>
                <?php
                }
                ?>
            </div>
            <div class="section" id="list-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Laptop</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <?php
                        foreach ($list_product as $item) {
                            if ($item['cat_id'] == 6 || $item['parent_id'] == 6) {
                        ?>
                                <li>
                                    <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="thumb">
                                        <img src="admin/uploads/product/<?php echo $item['product_thumb'] ?>">
                                    </a>
                                    <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="product-name"><?php echo $item['product_name'] ?></a>
                                    <div class="price">
                                        <span class="new"><?php echo currency_format($item['price']) ?></span>
                                        <span class="old"><?php if(!empty($item['original_price'])) echo currency_format($item['original_price']) ?></span>
                                    </div>
                                    <div class="action clearfix">
                                        <a href="?mod=cart&action=add&id=<?php echo $item['product_id']; ?>" title="Thêm giỏ hàng" class="add-cart fl-left">Thêm giỏ hàng</a>
                                        <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="Mua ngay" class="buy-now fl-right">Mua ngay</a>
                                    </div>
                                </li>
                        <?php
                            }
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </div>
        <?php get_sidebar(); ?>
    </div>
</div>
<?php
get_footer();
?>