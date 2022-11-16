<?php

function construct(){
    load_model('index');
}
function indexAction(){
    $list_order =  get_list_order();
    if(isset($_GET['btn_search'])){
        $q = $_GET['q'];
        $list_order = get_list_order_by_keyword($q);
    }

    $data = array(
        'list_order' => $list_order
    );
    load_view('index',$data);
}

function detailAction(){
    global $success;
    $order_id = (int) $_GET['order_id'];
    if(isset($_POST['sm_status'])){
        $status = $_POST['status'];
        $data_order = array(
            'status' => $status
        );
        update_status_order_by_order_id($order_id,$data_order);
        $success['order'] = "Cập nhật tình trạng đơn hàng thành công";
    }
    // Lấy thông tin đơn hàng
    $order_info = get_info_order_by_order_id($order_id);
    //Lấy danh sách chi tiết hóa đơn theo order_id
    $order_detail = get_order_detail_by_order_id($order_id);
    $data = array(
        'order_info' => $order_info,
        'order_detail' => $order_detail
    );
    load_view('detail',$data);
}


?>