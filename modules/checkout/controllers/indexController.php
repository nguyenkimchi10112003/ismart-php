<?php

function construct(){
    load_model('index');
    load('lib','validation');
    load('lib','email');
    load('lib','cart');
}

function indexAction(){
    global $error,$fullname,$address,$phone;
    if(isset($_POST['btn_order'])){
        $error = array();

        $email = $_POST['email'];
        $note = $_POST['note'];
        if(empty($_POST['fullname'])){
            $error['fullname'] = "Không được để trống trường Họ tên";
        }else{
            $fullname = $_POST['fullname'];
        }
        if(empty($_POST['address'])){
            $error['address'] = "Không được để trống trường Địa chỉ";
        }else{
            $address = $_POST['address'];
        }
        if(empty($_POST['phone'])){
            $error['phone'] = "Không được để trống trường Số điện thoại";
        }else{
            if(!is_phone_number($_POST['phone'])){
                $error['phone'] = "Số điện thoại không đúng, vui lòng nhập lại";
            }else{
                $phone = $_POST['phone'];
            }
        }

        if(empty($error)){
            $data_guest = array(
                'fullname' => $fullname,
                'email' => $email,
                'phone_number' => $phone,
                'address_ship' => $address,
                'note' => $note
            );
            $guest_id = add_guest($data_guest);

            $data_order = array(
                'guest_id' => $guest_id,
                'num_order' => $_SESSION['cart']['info']['num_order'],
                'total_price' => $_SESSION['cart']['info']['total'],
                'created_at' => time()
            );
            $order_id = add_order($data_order);

            foreach($_SESSION['cart']['buy'] as $item){
                $data_order_detail = array(
                    'order_id' => $order_id,
                    'product_id' => $item['id'],
                    'price' => $item['price'],
                    'quantity' => $item['quantity'],
                    'sub_total_price' => $item['sub_total']
                );
                $id = add_order_detail($data_order_detail);
            }

            // Gửi email cho khách hàng
            $subject = "[Ismart] Xác nhận đặt hàng";
            $content = "<p>Xin chào {$fullname}</p>
            <p>Rất cảm ơn quý khách đã tin tưởng và lựa chọn dịch vụ sản phẩm của cửa hàng Ismart của chúng tôi</p>
            <p>Nếu có bất kỳ vấn đề gì, hãy gọi điện ngay đến tổng đài trợ giúp của chúng tôi tại đây!</p>
            <p>Hotline: 0336293669</p>";
            if(!empty($email)){
                send_email($email,$fullname,$subject,$content);
            }
            // Xóa tất cả sản phẩm ra khỏi giỏ hàng sau khi khách hàng thanh toán thành công
            delete_cart('');
            // Chuyển đến trang đặt hàng thành công
            redirect("?mod=checkout&action=success");
        }

    }
    load_view('index');
}

// Thông báo đặt hàng thành công
function successAction(){
    load_view('success');
}
?>

