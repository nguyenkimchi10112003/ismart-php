<?php

function add_cart($id,$info_product){
    $quantity = 1;
    if(isset($_SESSION['cart']) && array_key_exists($id,$_SESSION['cart']['buy'])){
        $quantity = $_SESSION['cart']['buy'][$id]['quantity'] + 1;
    }

    $_SESSION['cart']['buy'][$id] = array(
        'id' => $info_product['product_id'],
        // 'url' => $info_product['url'],
        'product_name' => $info_product['product_name'],
        'slug' => $info_product['slug_product'],
        'price' => $info_product['price'],
        'product_thumb' => $info_product['product_thumb'],
        'quantity' => $quantity,
        'sub_total' => $quantity * $info_product['price']
    );
    // Cập nhật hóa đơn
    update_info_cart();
}

function update_info_cart(){
    if(isset($_SESSION['cart'])){
        $num_order = 0;
        $total = 0;
        foreach($_SESSION['cart']['buy'] as $item){
            $num_order += $item['quantity'];
            $total += $item['sub_total'];
        }
    
        $_SESSION['cart']['info'] = array(
            'num_order' => $num_order,
            'total' => $total
        );
    }
}

function get_list_buy_cart(){
    if(isset($_SESSION['cart'])){
        foreach($_SESSION['cart']['buy'] as &$item){
            $item['url_delete_cart'] = "?mod=cart&action=delete&id={$item['id']}";
        }
        return $_SESSION['cart']['buy'];
    }
    return false;
}

function get_num_order_cart(){
    if(isset($_SESSION['cart'])){
        return $_SESSION['cart']['info']['num_order'];
    }
    return false;
}

function get_total_cart(){
    if(isset($_SESSION['cart'])){
        return $_SESSION['cart']['info']['total'];
    }
    return false;
}

function delete_cart($id){
    if(isset($_SESSION['cart'])){
        if(!empty($id)){
            unset($_SESSION['cart']['buy'][$id]);
            update_info_cart();
        }else{
            unset($_SESSION['cart']);
        }
    }
}

function update_cart($quantity){
    foreach($quantity as $id => $new_quantity){
        $_SESSION['cart']['buy'][$id]['quantity'] =$new_quantity;
        $_SESSION['cart']['buy'][$id]['sub_total'] = $new_quantity * $_SESSION['cart']['buy'][$id]['price'];
    }
    update_info_cart();
}

?>