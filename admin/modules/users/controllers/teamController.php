<?php

function construct(){
    load_model('index');
}


function indexAction(){
    load('lib','pagging');
    // Phân trang
    $num_per_page = 3;
    $total_row = get_number_user();
    $num_page = ceil($total_row / $num_per_page);
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    $start = ($page - 1) * $num_per_page;
    $list_user = get_list_user($start,$num_per_page);
    $data = array(
        'list_user' => $list_user,
        'start' => $start,
        'num_page' => $num_page,
        'page' => $page,
        'total_row' => $total_row
    );
    load_view('indexTeam',$data);
}

// Thêm user
function addMemberAction(){
    global $error,$success,$fullname,$username,$password,$email,$address,$phone_number;
    if(isset($_POST['btn_add'])){
        $error = array();
        $fullname = $_POST['fullname'];
        $address = $_POST['address'];
        
        if(empty($_POST['phone_number'])){
            $phone_number = NULL;
        }else{
            $phone_number = $_POST['phone_number'];
        }

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

        if (empty($_POST['email'])) {
            $error['email'] = "Không được để trống email";
        } else {
            if (!is_email($_POST['email'])) {
                $error['email'] = "Nhập email không đúng định dạng";
            } else {
                $email = $_POST['email'];
            }
        }

        if(empty($error)){
            if(check_exists_user($username,$email)){
                $error['account'] = "Tên đăng nhập hoặc email đã tồn tại trong hệ thống";
            }else{
                $data = array(
                    'fullname' => $fullname,
                    'username' => $username,
                    'email' => $email,
                    'password' => $password,
                    'address' => $address,
                    'phone_number' => $phone_number,
                    'created_at' => time()
                );
                add_user($data);
                $success['account'] = "Thêm thành công";
            }
        }
    }

    load_view('add');
}

// Cập nhật thông tin trong danh sách người dùng
function updateAction()
{
    $user_id = (int)$_GET['user_id'];
    global $error, $fullname,$success,$address,$phone_number;
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
            $username = get_username_by_user_id($user_id);
            update_info_user($username, $data);
            $success['account'] = "Cập nhật tài khoản thành công";
        }
    }

    $info_user = get_user_by_userid($user_id);
    $data = array(
        'info_user' => $info_user,
        'user_id' => $user_id
    );
    load_view('update', $data);
}

// Xóa user
function deleteAction(){
    $user_id = (int) $_GET['user_id'];
    delete_user_by_id($user_id);
    redirect("?mod=users&controller=team");
}

// Đổi mật khẩu  trong danh sách người dùng
function resetAction()
{ 
    $user_id = (int) $_GET['user_id'];
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
            $username = get_username_by_user_id($user_id);
            if(check_password($username, $old_password)){
                if($password == $confirm_password){
                    $data['password'] = $password;
                    update_new_password($username, $data);
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

// CHUA XONG
// Cập nhập pagging
function update_paggingAction(){
    $page = $_POST['page'];
    echo $page;
}

?>