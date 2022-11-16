<?php

// Lấy danh sách khách hàng kết với bảng order
function get_list_guest(){
    return db_fetch_array("select * from `tbl_guest` inner join `tbl_order`
    on `tbl_guest`.`guest_id` = `tbl_order`.`guest_id`
    ");
}

// Xóa khách hàng theo id
function delete_guest_by_guest_id($guest_id){
    db_delete("tbl_guest","`guest_id` = {$guest_id}");
}

// Cập nhật thông tin khách hàng theo id
function update_info_guest_by_guest_id($guest_id,$data){
    db_update("tbl_guest",$data,"`guest_id` = {$guest_id}");
}

// Lấy thông tin khách hàng theo guest_id
function get_info_guest_by_guest_id($guest_id){
    return db_fetch_row("select * from `tbl_guest` where `guest_id` = {$guest_id}");
}

// Lấy danh sách khách hàng theo từ khóa admin cần tìm kiếm
function get_list_guest_by_keyword($q){
    return db_fetch_array("
        select * from `tbl_guest` inner join `tbl_order`
        on `tbl_guest`.`guest_id` = `tbl_order`.`guest_id`
        where `fullname` like '%{$q}%' 
        or `phone_number` like '%{$q}%'
        or `email` like '%{$q}%' 
        or `address_ship` like '%{$q}%'
    ");
}


?>