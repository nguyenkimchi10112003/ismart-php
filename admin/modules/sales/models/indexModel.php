<?php

// Lấy ra danh sách các đơn hàng kết với bảng guest
function get_list_order(){
    return db_fetch_array("SELECT * FROM `tbl_order`,`tbl_guest` WHERE `tbl_order`.`guest_id` = `tbl_guest`.`guest_id`");
}

// Lấy ra danh sách đơn hàng theo keyword tìm kiếm kết với bảng guest
function get_list_order_by_keyword($keyword){
    return db_fetch_array("
    SELECT * FROM `tbl_order` 
    INNER JOIN `tbl_guest`  ON `tbl_order`.`guest_id` = `tbl_guest`.`guest_id` 
    WHERE `tbl_guest`.`fullname` LIKE '%{$keyword}%' 
    OR CAST(`tbl_order`.`order_id` AS varchar(50)) like '%{$keyword}%'");
}
// Lấy thông tin đơn hàng theo id
function get_info_order_by_order_id($order_id){
    return db_fetch_row("select * from `tbl_order` inner join `tbl_guest` 
    on `tbl_order`.`guest_id`=`tbl_guest`.`guest_id` 
    where `order_id` = {$order_id}");
}

// Lấy thông tin khách hàng theo guest_id
function get_info_guest_by_guest_id($guest_id){
    return db_fetch_row("select * from `tbl_guest` where `guest_id` = {$guest_id}");
}

// Lấy danh sách các chi tiết hóa đơn theo order_id kết với bảng product
function get_order_detail_by_order_id($order_id){
    return db_fetch_array("select `tbl_order_detail`.*,`tbl_product`.`product_thumb`,`tbl_product`.`product_name`
     from `tbl_order_detail`, `tbl_product` where `order_id` = {$order_id} and `tbl_order_detail`.`product_id` = `tbl_product`.`product_id`");
}

// Cập nhật trạng thái hóa đơn theo id hóa đơn
function update_status_order_by_order_id($order_id,$data){
    db_update("tbl_order",$data,"`order_id` = {$order_id}");
}

?>