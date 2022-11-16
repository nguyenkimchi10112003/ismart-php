<?php
get_header();
?>
<div id="main-content-wp" class="list-post-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?mod=users&controller=team&action=addMember" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Nhóm quản trị</h3>
        </div>
    </div>
    <div class="wrap clearfix">
        <?php
        get_sidebar('user');
        ?>
        <div id="content" class="fl-right">
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <h1 class="title_list_member">Danh sách thành viên</h1>
                    <div class="table-responsive">
                        <?php
                            if(!empty($list_user)){
                        ?>
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">Họ và tên</span></td>
                                    <td><span class="thead-text">Tên đăng nhập</span></td>
                                    <td><span class="thead-text">Email</span></td>
                                    <td><span class="thead-text">Ngày tạo</span></td>
                                    <td><span class="thead-text">Số điện thoại</span></td>
                                    <td><span class="thead-text">Địa chi</span></td>
                                    <td><span class="thead-text">Thao tác</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $count = $start;
                                    foreach($list_user as $user){
                                        $count++;
                                ?>
                                <tr>
                                    <td><span class="tbody-text"><?php echo $count ?></span></td>
                                    <td><span class="tbody-text"><?php echo $user['fullname'] ?></span></td>
                                    <td><span class="tbody-text"><?php echo $user['username'] ?></span></td>
                                    <td><span class="tbody-text"><?php echo $user['email'] ?></span></td>
                                    <td><span class="tbody-text"><?php if(!empty($user['created_date'])) echo date('d/m/Y', $user['created_date']); ?></span></td>
                                    <td><span class="tbody-text"><?php echo $user['phone_number'] ?></span></td>
                                    <td><span class="tbody-text"><?php echo $user['address'] ?></span></td>
                                    <td>
                                        <a class="p-1" href="<?php echo "?mod=users&controller=team&action=update&user_id={$user['user_id']}"; ?>">Sửa</a>|<a class="p-1" href="<?php echo "?mod=users&controller=team&action=delete&user_id={$user['user_id']}"; ?>">Xóa</a>
                                    </td>
                                </tr>
                                <?php
                                    }
                                ?>
                            </tbody>
                        </table>
                        <?php
                            }
                        ?>
                    </div>

                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail clearfix">
                    <?php 
                       echo get_pagging($num_page,$page,"?mod=users&controller=team");
                    ?>
                </div>
            </div>
            <h3>Có <?php echo $total_row ?> thành viên trong hệ thống</h3>
        </div>
    </div>
</div>
<?php
get_footer();
?>