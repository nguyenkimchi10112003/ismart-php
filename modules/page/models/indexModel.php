<?php

// Lấy danh sách sản phẩm
function get_list_product(){
    return db_fetch_array("select * from `tbl_product` join `tbl_category`
        on `tbl_product`.`cat_id` = `tbl_category`.`cat_id`");
}

// Lấy thông tin trang theo id
function get_info_page_by_id($id){
    return db_fetch_row("select * from `tbl_pages` where `page_id` = {$id}");
}


?>