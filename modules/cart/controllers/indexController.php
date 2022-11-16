<?php

function construct(){
    load('lib','cart');
    load_model('index');
}

function addAction(){
    $id = (int)$_GET['id'];
    $info_product = get_info_product_by_id($id);
    add_cart($id,$info_product);
    redirect("?mod=cart");
}

function indexAction(){
    $list_buy_cart = get_list_buy_cart();
    $total_cart = get_total_cart();
    $num_order = get_num_order_cart();
    $data = array(
        'list_buy_cart' => $list_buy_cart,
        'total_cart' => $total_cart,
        'num_order' => $num_order
    );
    load_view('index', $data);
}

function deleteAction(){
    $id = (int)$_GET['id'];
    delete_cart($id);
    redirect("?mod=cart");
}

function deleteAllAction(){
    delete_cart('');
    redirect("?mod=cart");
}

function ajax_updateAction(){
    $id = $_POST['id'];
    $qty = $_POST['qty'];
    // Lấy sản phẩm theo id
    $item = get_info_product_by_id($id);
    if(isset($_SESSION['cart']) && array_key_exists($id,$_SESSION['cart']['buy'])){
        // Cập nhật số lượng 
        $_SESSION['cart']['buy'][$id]['quantity'] = $qty;
        // Cập nhật giá
        $sub_total =  $qty * $item['price'];
        $_SESSION['cart']['buy'][$id]['sub_total'] = $sub_total;
        update_info_cart();

        $total = get_total_cart();
        $data = array(
            'sub_total' => currency_format($sub_total),
            'total' => currency_format($total)
        );
        echo json_encode($data);
    }
}

?>