<?php
get_header();
?>
<div id="main-content-wp" class="cart-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="?" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Giỏ hàng</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="wrapper" class="wp-inner clearfix">
        <div class="section" id="info-cart-wp">
            <?php
                if(!empty($list_buy_cart)){        
            ?>
            <div class="section-detail table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <td>Ảnh sản phẩm</td>
                            <td>Tên sản phẩm</td>
                            <td>Giá sản phẩm</td>
                            <td>Số lượng</td>
                            <td colspan="2">Thành tiền</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            foreach($list_buy_cart as $item){
                        ?>
                        <tr>
                            <td>
                                <a href="san-pham/<?php if(!empty($item['slug'])) echo $item['slug'] ?>-<?php echo $item['id'] ?>.html" title="" class="thumb">
                                    <img src="admin/uploads/product/<?php echo $item['product_thumb']; ?>" alt="">
                                </a>
                            </td>
                            <td>
                                <a href="san-pham/<?php if(!empty($item['slug'])) echo $item['slug'] ?>-<?php echo $item['id'] ?>.html" title="" class="name-product"><?php echo $item['product_name']; ?></a>
                            </td>
                            <td><?php echo currency_format($item['price']) ?></td>
                            <td>
                                <input type="number" name="num-order" min="1" max="10" data-id="<?php echo $item['id'] ?>" value="<?php echo $item['quantity']; ?>" class="num-order">
                            </td>
                            <td class="sub_total_<?php echo $item['id']; ?>"><?php echo currency_format($item['sub_total']); ?></td>
                            <td>
                                <a href="<?php echo $item['url_delete_cart'] ?>" title="" class="del-product"><i class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        <?php
                            }
                        ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="7">
                                <div class="clearfix">
                                    <p id="total-price" class="fl-right">Tổng giá: <span class="total"><?php echo currency_format($total_cart) ?></span></p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <div class="clearfix">
                                    <div class="fl-right">
                                        <!-- <a href="" title="" id="update-cart">Cập nhật giỏ hàng</a> -->
                                        <a href="?mod=checkout" title="" id="checkout-cart">Thanh toán</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <?php
                }else{
            ?>
                <p class="" style="min-height: 400px">Không có sản phẩm nào trong giỏ hàng</p>
            <?php

                }
            ?>
        </div>
        <div class="section" id="action-cart-wp">
            <div class="section-detail">
                <!-- <p class="title">Click vào <span>“Cập nhật giỏ hàng”</span> để cập nhật số lượng. Nhập vào số lượng <span>0</span> để xóa sản phẩm khỏi giỏ hàng. Nhấn vào thanh toán để hoàn tất mua hàng.</p> -->
                <a href="?" title="" id="buy-more">Mua tiếp</a><br/>
                <a href="?mod=cart&action=deleteAll" title="" id="delete-cart">Xóa giỏ hàng</a>
            </div>
        </div>
    </div>
</div>
<?php
get_footer();
?>