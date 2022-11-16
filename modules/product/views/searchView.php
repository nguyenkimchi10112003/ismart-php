<?php
get_header();
?>
<div id="main-content-wp" class="clearfix category-product-page">
    <div class="wp-inner">
        <div class="secion" id="breadcrumb-wp">
            <div class="secion-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Tìm kiếm</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content fl-right">
            <div class="section" id="list-product-wp">
                <div class="section-head clearfix">
                    <div class="filter-wp fl-right">
                        <p class="desc">Hiển thị 45 trên 50 sản phẩm</p>
                        <div class="form-filter">
                            <form method="POST" action="">
                                <select name="select">
                                    <option value="0">Sắp xếp</option>
                                    <option value="1">Từ A-Z</option>
                                    <option value="2">Từ Z-A</option>
                                    <option value="3">Giá cao xuống thấp</option>
                                    <option value="3">Giá thấp lên cao</option>
                                </select>
                                <button type="submit">Lọc</button>
                            </form>
                        </div>
                    </div>
                </div>
                <?php
                if (!empty($list_product)) {
                ?>
                    <div class="section-detail">
                        <ul class="list-item clearfix">
                            <?php
                            foreach ($list_product as $item) {
                            ?>
                                <li style="text-align: center">
                                    <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="thumb" style="display: inline-block; width: 125px; height: 125px">
                                        <img src="admin/uploads/product/<?php echo $item['product_thumb'] ?>">
                                    </a>
                                    <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="" class="product-name"><?php echo $item['product_name'] ?></a>
                                    <div class="price">
                                        <span class="new"><?php echo currency_format($item['price']) ?></span>
                                        <span class="old"><?php echo currency_format($item['original_price']) ?></span>
                                    </div>
                                    <div class="action clearfix">
                                        <a href="?mod=cart&action=add&id=<?php echo $item['product_id']; ?>" title="Thêm giỏ hàng" class="add-cart fl-left">Thêm giỏ hàng</a>
                                        <a href="san-pham/<?php if(!empty($item['slug_product'])) echo $item['slug_product'].'-' ?><?php echo $item['product_id']; ?>.html" title="Mua ngay" class="buy-now fl-right">Mua ngay</a>
                                    </div>
                                </li>
                            <?php
                            }
                            ?>
                        </ul>
                    </div>
                <?php
                } else {
                ?>
                    <p class="text-center fs-5">Không tìm thấy sản phẩm cần tìm kiếm</p>
                <?php
                }
                ?>
            </div>
            <!-- <div class="section" id="paging-wp">
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <li>
                            <a href="" title="">1</a>
                        </li>
                        <li>
                            <a href="" title="">2</a>
                        </li>
                        <li>
                            <a href="" title="">3</a>
                        </li>
                    </ul>
                </div>
            </div> -->
        </div>
        <?php get_sidebar('cat-product'); ?>
    </div>
</div>
<?php
get_footer();
?>