<?php
get_header();
?>
<div id="main-content-wp" class="add-cat-page">
    <div class="wrap clearfix">
        <?php
            get_sidebar('user');
        ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">Thêm mới thành viên</h3>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <?php echo form_error('account'); ?>
                    <?php echo form_success('account'); ?>
                    <form method="POST">
                        <label for="fullname">Họ và tên</label>
                        <input type="text" name="fullname" id="fullname" value="<?php echo set_value('fullname'); ?>">

                        <label for="username">Tên đăng nhập</label>
                        <input type="text" name="username" id="add_username" value="<?php echo set_value('username'); ?>">
                        <?php echo form_error('username') ?>

                        <label for="email">Email</label>
                        <input type="email" name="email" id="add_email" value="<?php echo set_value('email'); ?>">
                        <?php echo form_error('email') ?>

                        <label for="password">Mật khẩu</label>
                        <input type="password" name="password" id="password">
                        <?php echo form_error('password') ?>

                        <label for="phone_number">Số điện thoại</label>
                        <input type="text" name="phone_number" id="phone_number" value="<?php echo set_value('phone_number'); ?>">
                        <label for="address">Địa chỉ</label>
                        <textarea name="address" id="address"><?php echo set_value('address'); ?></textarea>
                        <button type="submit" name="btn_add" id="btn-submit">Thêm mới</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
get_header();
?>