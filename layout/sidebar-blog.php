<div class="sidebar fl-left">
    <div class="section" id="selling-wp">
        <div class="section-head">
            <h3 class="section-title">Sản phẩm bán chạy</h3>
        </div>
        <?php
        if (!empty($list_product)) {
        ?>
            <div class="section-detail">
                <ul class="list-item">
                    <?php
                    foreach ($list_product as $item) {
                        if ($item['celling_product'] == 1) {
                    ?>
                            <li class="clearfix">
                                <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="<?php echo $item['product_name']; ?>" class="thumb fl-left">
                                    <img src="admin/uploads/product/<?php echo $item['product_thumb']; ?>" alt="">
                                </a>
                                <div class="info fl-right">
                                    <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="<?php echo $item['product_name']; ?>" class="product-name"><?php echo $item['product_name']; ?></a>
                                    <div class="price">
                                        <span class="new"><?php echo currency_format($item['price']); ?></span>
                                        <span class="old"><?php echo currency_format($item['original_price']); ?></span>
                                    </div>
                                    <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="buy-now">Mua ngay</a>
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
    <div class="section" id="banner-wp">
        <div class="section-detail">
            <a href="" title="" class="thumb">
                <img src="public/images/banner.png" alt="">
            </a>
        </div>
    </div>
</div>