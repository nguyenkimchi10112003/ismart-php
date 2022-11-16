<?php

function construct(){
    load_model('index');
}

function indexAction(){
    $id = (int)$_GET['id'];
    $info_page = get_info_page_by_id($id);
    $list_product = get_list_product();
    $data = array(
        'list_product' => $list_product,
        'info_page' => $info_page
    );
    load_view('index',$data);
}

?>