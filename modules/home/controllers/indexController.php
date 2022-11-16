<?php

function construct(){
    load_model('index');
}
function indexAction(){
    $list_category = get_list_category();
    $list_product = get_list_product();
    $list_service = get_list_service();
    $list_slider = get_list_slider();
    $data = array(
        'list_product' => $list_product,
        'list_category' => $list_category,
        'list_service' => $list_service,
        'list_slider' => $list_slider,
    );
    load_view('index',$data);
}

?>