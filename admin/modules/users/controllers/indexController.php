<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    load_view('index');
}

// Đăng nhập 
function loginAction()
{
    global $error, $username, $password;
    if (isset($_POST['btn-login'])) {
        $error = array();
        if (empty($_POST['username'])) {
            $error['username'] = "Không được để trống username";
        } else {
            if (!is_username($_POST['username'])) {
                $error['username'] = "Nhập username không đúng định dạng";
            } else {
                $username = $_POST['username'];
            }
        }

        if (empty($_POST['password'])) {
            $error['password'] = "Không được để trống password";
        } else {
            if (!is_password($_POST['password'])) {
                $error['password'] = "Nhập password không đúng định dạng";
            } else {
                $password = md5($_POST['password']);
            }
        }


        if (empty($error)) {
            if (check_login($username, $password)) {
                if (isset($_POST['remember_me'])) {
                    setcookie('is_login', true, time() + 3600);
                    setcookie('user_login', $username, time() + 3600);
                }
                $_SESSION['is_login'] = true;
                $_SESSION['user_login'] = $username;
                redirect();
            } else {
                $error['account'] = "Tên đăng nhập hoặc mật khẩu không tồn tại trong hệ thống";
            }
        }
    }
    load_view('login');
}

// Đăng xuất
function logoutAction()
{
    setcookie('is_login', true, time() - 3600);
    setcookie('user_login', $_COOKIE['user_login'], time() - 3600);
    unset($_SESSION['is_login']);
    unset($_SESSION['user_login']);
    redirect("?mod=users&action=login");
}

// Cập nhật thông tin
function updateAction()
{
    global $error, $fullname,$address,$phone_number,$success;
    if (isset($_POST['btn_update'])) {
        $error = array();
        if (empty($_POST['fullname'])) {
            $error['fullname'] = "Không được để trống trường Họ và tên";
        } else {
            $fullname = $_POST['fullname'];
        }

        if (is_phone_number($_POST['phone_number'])) {
            $phone_number = $_POST['phone_number'];
        } else {
            $error['phone_number'] = "Số điện thoại không đúng";
        }

        $address = $_POST['address'];

        if (empty($error)) {
            $data = array(
                'fullname' => $fullname,
                'phone_number' => $phone_number,
                'address' => $address
            );
            update_info_user(user_login(), $data);
            $success['account'] = "Cập nhật tài khoản thành công";
        }
    }

    $info_user = get_user_by_username(user_login());
    $data['info_user'] = $info_user;
    load_view('update', $data);
}

function resetAction()
{
    global $error, $password, $success;
    if (isset($_POST['btn_update'])) {
        $error = array();
        $success = array();

        if (empty($_POST['pass-old'])) {
            $error['password'] = "Không được để trống password";
        } else {
            if (!is_password($_POST['pass-old'])) {
                $error['password'] = "Nhập password không đúng định dạng";
            } else {
                $old_password = md5($_POST['pass-old']);
            }
        }

        if (empty($_POST['pass-new'])) {
            $error['password'] = "Không được để trống password";
        } else {
            if (!is_password($_POST['pass-new'])) {
                $error['password'] = "Nhập password không đúng định dạng";
            } else {
                $password = md5($_POST['pass-new']);
            }
        }

        if (empty($_POST['confirm-pass'])) {
            $error['password'] = "Không được để trống password";
        } else {
            if (!is_password($_POST['confirm-pass'])) {
                $error['password'] = "Nhập password không đúng định dạng";
            } else {
                $confirm_password = md5($_POST['confirm-pass']);
            }
        }

        if(empty($error)){
            if(check_password(user_login(), $old_password)){
                if($password == $confirm_password){
                    $data['password'] = $password;
                    update_new_password(user_login(), $data);
                    $success['password'] = "Đổi mật khẩu thành công";
                }else{
                    $error['new_password'] = "Mật khẩu mới và xác nhận mật khẩu không giống nhau";
                }
            }else{
                $error['old_password'] = "Mật khẩu không đúng, vui lòng nhập lại";
            }
        }
    }
    load_view('reset');
}
