<?php

function construct(){
    load_model('indexGuest');
}

// Danh sách khách hàng
function indexAction(){
    // Lấy danh sách kết với bản order
    $list_guest = get_list_guest();
    if(isset($_GET['btn_search'])){
        $q = $_GET['q'];
        $list_guest = get_list_guest_by_keyword($q);
    }
    $data = array(
        'list_guest' => $list_guest
    );
    load_view('indexGuest',$data);
}

// Cập nhập thông tin khách hàng
function updateAction(){
    global $error,$fullname,$email,$phone_number,$address,$success;
    $guest_id = (int)$_GET['id'];
    $guest_info = get_info_guest_by_guest_id($guest_id);
    if(isset($_POST['btn_update'])){
        $error = array();

        if(empty($_POST['fullname'])){
            $error['fullname'] = "Không được để trống trường họ và tên";
        }else{
            $fullname = $_POST['fullname'];
        }

        if(empty($_POST['address'])){
            $error['address'] = "Không được để trống trường địa chỉ";
        }else{
            $address = $_POST['address'];
        }

        if(empty($_POST['email'])){
            $error['email'] = "Không được để trống trường email";
        }else{
            if(!is_email($_POST['email'])){
                $error['email'] = "Email không đúng định dạng";
            }else{
                $email = $_POST['email'];                
            }
        }

        if(empty($_POST['phone_number'])){
            $error['phone_number'] = "Không được để trống trường số điện thoại";
        }else{
            if(!is_phone_number($_POST['phone_number'])){
                $error['phone_number'] = "Số điện thoại không đúng";
            }else{
                $phone_number = $_POST['phone_number'];
            }
        }

        if(empty($error)){
            $data = array(
                'fullname' => $fullname,
                'email' => $email,
                'phone_number' => $phone_number,
                'address_ship' => $address
            );
            update_info_guest_by_guest_id($guest_id,$data);
            $guest_info = $data;
            $success['guest'] = "Cập nhật thông tin khách hàng thành công";
        }
    }

    $data_guest = array(
        'guest_info' => $guest_info
    );
    load_view('updateGuest',$data_guest);
}

// // Xóa khách hàng
// function deleteAction(){
//     $guest_id = (int)$_GET['id'];
//     delete_guest_by_guest_id($guest_id);
//     redirect("?mod=sales&controller=indexGuest");
// }


?>