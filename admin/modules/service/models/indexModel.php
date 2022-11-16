<?php

// Thêm mới dịch vụ
function add_service($data){
    db_insert("tbl_service",$data);
}

// Lấy danh sách dịch vụ
function get_list_service(){
    return db_fetch_array("select * from `tbl_service`");
}

// Lấy thông tin dịch vụ theo id
function get_info_service_by_id($id){
    return db_fetch_row("select * from `tbl_service` where `service_id`={$id}");
}

// Cập nhật thông tin dịch vụ theo id
function update_service_by_id($id,$data){
    db_update("tbl_service",$data,"`service_id` ={$id}");
}

// 
function delete_service_by_id($id){
    db_delete("tbl_service","`service_id` = {$id}");
}
?>