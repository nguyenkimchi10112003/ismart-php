<?php
// Lấy danh sách sản phẩm
function get_list_product(){
    return db_fetch_array('select * from `tbl_product` join `tbl_category`
        on `tbl_product`.`cat_id` = `tbl_category`.`cat_id`
    ');
}

// Lấy danh sách danh mục 
function get_list_category(){
    return db_fetch_array("select *, IF( EXISTS(
        SELECT *
        FROM `tbl_category` `B`
        WHERE `B`.`parent_id` = `A`.`cat_id` ), 1, 0) is_has_child from `tbl_category` `A`;");
}

// Lấy danh sách dịch vụ
function get_list_service(){
    return db_fetch_array("select * from `tbl_service`");
}

// Lấy danh sách slider 
function get_list_slider(){
    return db_fetch_array("select * from `tbl_slider` order by `order_by` asc");
}

?>