<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/reset.css">
    <link rel="stylesheet" href="public/css/import/login.css">
    <title>Trang đăng nhập</title>
</head>

<body>
    <div id="wp-form-login">
        <h1 class="title-login">Đăng nhập</h1>
        <form action="" method="POST" id="form-login">
            <input type="text" name="username" id="username" placeholder="Username" value="<?php echo set_value('username'); ?>">
            <?php echo form_error('username'); ?>
            <input type="password" name="password" id="password" placeholder="Password">
            <?php echo form_error('password'); ?>
            <input type="checkbox" name="remember_me" id="remember_me">
            <label for="remember_me">Ghi nhớ đăng nhập</label>
            <?php echo form_error('account') ?>
            <input type="submit" value="Đăng nhập" name="btn-login" id="btn-login">
        </form>
    </div>
</body>

</html>