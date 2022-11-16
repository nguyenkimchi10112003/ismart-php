<?php
get_header();
?>
<div id="main-content-wp" class="list-product-page">
    <div class="wrap clearfix">
        <?php
        get_sidebar();
        ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">Danh sách khách hàng</h3>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="filter-wp clearfix">
                        <!-- <ul class="post-status fl-left">
                            <li class="all"><a href="">Tất cả <span class="count">(69)</span></a></li>
                        </ul> -->
                        <form method="GET" class="form-s fl-right">
                            <input type="hidden" name="mod" value="sales">
                            <input type="hidden" name="controller" value="indexGuest">
                            <input type="text" name="q" id="s" placeholder="Nhập từ khóa cần tìm kiếm">
                            <input type="submit" name="btn_search" value="Tìm kiếm">
                        </form>
                    </div>
                    <!-- <div class="actions">
                        <form method="GET" action="" class="form-actions">
                            <select name="actions">
                                <option value="0">Tác vụ</option>
                                <option value="1">Xóa</option>
                            </select>
                            <input type="submit" name="sm_action" value="Áp dụng">
                        </form>
                    </div> -->
                    <div class="table-responsive">
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    <!-- <td><input type="checkbox" name="checkAll" id="checkAll"></td> -->
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">Họ và tên</span></td>
                                    <td><span class="thead-text">Số điện thoại</span></td>
                                    <td><span class="thead-text">Email</span></td>
                                    <td><span class="thead-text">Địa chỉ</span></td>
                                    <td><span class="thead-text">Đơn hàng</span></td>
                                    <td><span class="thead-text">Thời gian</span></td>
                                    <td><span class="thead-text"><i class="fa fa-cog" aria-hidden="true"></i></span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if (!empty($list_guest)) {
                                    $temp = 0;
                                    foreach ($list_guest as $guest) {
                                        $temp++;
                                ?>
                                        <tr>
                                            <!-- <td><input type="checkbox" name="checkItem" class="checkItem"></td> -->
                                            <td><span class="tbody-text"><?php echo $temp; ?></span></td>
                                            <td>
                                                <a href="?mod=sales&controller=indexGuest&action=update&id=<?php echo $guest['guest_id']; ?>" title=""><?php echo $guest['fullname']; ?></a>
                                            </td>
                                            <td><span class="tbody-text"><?php echo $guest['phone_number']; ?></span></td>
                                            <td><span class="tbody-text"><?php echo $guest['email']; ?></span></td>
                                            <td><span class="tbody-text"><?php echo $guest['address_ship']; ?></span></td>
                                            <td><span class="tbody-text"><?php echo $guest['order_id']; ?></span></td>
                                            <td><span class="tbody-text"><?php  if(!empty($guest['created_at'])) echo date('d/m/Y',$guest['created_at']) ?></span></td>
                                            <td>
                                                <a href="?mod=sales&controller=indexGuest&action=update&id=<?php echo $guest['guest_id']; ?>" title="Sửa" class="update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                            </td>
                                        </tr>
                                    <?php
                                    }
                                } else {
                                    ?>
                                    <td colspan="8" class="text-center"><span class="tbody-text">Không có thông tin khách hàng cần tìm kiếm</span></td>
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
                    <!-- <p id="desc" class="fl-left">Chọn vào checkbox để lựa chọn tất cả</p>
                    <ul id="list-paging" class="fl-right">
                        <li>
                            <a href="" title=""><</a>
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