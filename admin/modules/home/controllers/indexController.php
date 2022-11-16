<?php

function construct(){
    load_model('index');
}
function indexAction(){
    $num_order_success = get_num_order_success(); 
    $num_order_cancel = get_num_order_cancel(); 
    $num_order_processing = get_num_order_processing(); 
    $total_sales = get_total_sales();
    $data = array(
        'num_order_success' => $num_order_success,
        'num_order_cancel' => $num_order_cancel,
        'num_order_processing' => $num_order_processing,
        'total_sales' => $total_sales
    );
    load_view('index',$data);
}

?>