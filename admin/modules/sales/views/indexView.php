<?php
get_header();
?>
<div id="main-content-wp" class="list-product-page">
    <div class="wrap clearfix">
        <?php get_sidebar(); ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">Danh sách đơn hàng</h3>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="filter-wp clearfix">
                        <!-- <ul class="post-status fl-left">
                            <li class="all"><a href="">Tất cả <span class="count">(69)</span></a> |</li>
                            <li class="publish"><a href="">Đã đăng <span class="count">(51)</span></a> |</li>
                            <li class="pending"><a href="">Chờ xét duyệt<span class="count">(0)</span> |</a></li>
                            <li class="pending"><a href="">Thùng rác<span class="count">(0)</span></a></li>
                        </ul> -->
                        <form action="" method="GET" class="form-s fl-right">
                            <input type="hidden" name="mod" value="sales">
                            <input type="text" name="q" id="s" placeholder="Nhập từ khóa cần tìm kiếm">
                            <input type="submit" name="btn_search" value="Tìm kiếm">
                        </form>
                    </div>
                    <div class="actions">
                        <!-- <form method="GET" action="" class="form-actions">
                            <select name="actions">
                                <option value="0">Tác vụ</option>
                                <option value="1">Công khai</option>
                                <option value="1">Chờ duyệt</option>
                                <option value="2">Bỏ vào thủng rác</option>
                            </select>
                            <input type="submit" name="sm_action" value="Áp dụng">
                        </form> -->
                    </div>
                    <div class="table-responsive">
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    <!-- <td><input type="checkbox" name="checkAll" id="checkAll"></td> -->
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">Mã đơn hàng</span></td>
                                    <td><span class="thead-text">Họ và tên</span></td>
                                    <td><span class="thead-text">Số sản phẩm</span></td>
                                    <td><span class="thead-text">Tổng giá</span></td>
                                    <td><span class="thead-text">Trạng thái</span></td>
                                    <td><span class="thead-text">Thời gian</span></td>
                                    <td><span class="thead-text">Chi tiết</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if (!empty($list_order)) {
                                    $temp = 0;
                                    foreach ($list_order as $item) {
                                        $temp++;
                                ?>
                                        <tr>
                                            <!-- <td><input type="checkbox" name="checkItem" class="checkItem"></td> -->
                                            <td><span class="tbody-text"><?php echo $temp ?></span></td>
                                            <td><span class="tbody-text"><?php echo $item['order_id'] ?></span></td>
                                            <td>
                                                <!-- <div class="tb-title fl-left">
                                            <a href="" title=""><?php echo $item['fullname'] ?></a>
                                        </div>
                                        <ul class="list-operation fl-right">
                                            <li><a href="" title="Sửa" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
                                            <li><a href="" title="Xóa" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                        </ul> -->
                                                <span class="tbody-text"><?php echo $item['fullname'] ?></span>
                                            </td>
                                            <td><span class="tbody-text"><?php echo $item['num_order']; ?></span></td>
                                            <td><span class="tbody-text"><?php echo currency_format($item['total_price']); ?></span></td>
                                            <td>
                                                <span class="tbody-text">
                                                    <?php 
                                                        if($item['status'] == 0) echo "Đang xử lý";
                                                        else if($item['status'] == 1) echo "Đang vận chuyển";
                                                        else if($item['status'] == 2) echo "Thành công";
                                                        else echo "Đã hủy";
                                                    ?>
                                                </span>
                                            </td>
                                            <td><span class="tbody-text"><?php if(!empty($item['created_at'])) echo date('d/m/Y',$item['created_at']) ?></span></td>
                                            <td><a href="?mod=sales&action=detail&order_id=<?php echo $item['order_id']; ?>" title="" class="tbody-text">Chi tiết</a></td>
                                        </tr>
                                    <?php
                                    }
                                } else {
                                    ?>
                                        <tr>
                                            <td colspan="7" class="text-center">Không có dữ liệu</td>
                                        </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail clearfix">
                    <!-- <p id="desc" class="fl-left">Chọn vào checkbox để lựa chọn tất cả</p> -->
                    <!-- <ul id="list-paging" class="fl-right">
                        <li>
                            <a href="" title="">
                                <
                        </li>
                        <li>
                            <a href="" title="">1</a>
                        </li>
                        <li>
                            <a href="" title="">2</a>
                        </li>
                        <li>
                            <a href="" title="">3</a>
                        </li>
                        <li>
                            <a href="" title="">></a>
                        </li>
                    </ul> -->
                </div>
            </div>
        </div>
    </div>
</div>
<?php
get_footer();
?>