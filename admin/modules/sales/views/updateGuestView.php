<?php
get_header();
?>
<div id="main-content-wp" class="add-cat-page">
    <div class="wrap clearfix">
        <?php
            get_sidebar();
        ?>
        <div id="content" class="fl-right">      
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">Cập nhật thông tin khách hàng</h3>
                </div>
                <?php echo form_success('guest');  ?>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                <form method="POST">
                        <label for="display-name">Họ và tên</label>
                        <input type="text" name="fullname" id="display-name" value="<?php echo $guest_info['fullname']; ?>">
                        <?php echo form_error('fullname') ?>
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email-guest" value="<?php echo $guest_info['email']; ?>">
                        <?php echo form_error('email') ?>
                        <label for="tel">Số điện thoại</label>
                        <input type="text" name="phone_number" id="tel" value="<?php echo $guest_info['phone_number']; ?>">
                        <?php echo form_error('phone_number') ?>
                        <label for="address">Địa chỉ</label>
                        <textarea name="address" id="address"><?php echo $guest_info['address_ship']; ?></textarea>
                        <?php echo form_error('address') ?>
                        <button type="submit" name="btn_update" id="btn-submit">Cập nhật</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
get_footer();
?>