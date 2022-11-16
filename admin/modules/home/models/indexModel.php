<?php

//Lấy số lượng đơn hàng thành công
function get_num_order_success(){
    return db_num_rows("select * from `tbl_order` where `status` = 2");
}

//Lấy số lượng đơn hàng hủy
function get_num_order_cancel(){
    return db_num_rows("select * from `tbl_order` where `status` = 3");
}

//Lấy số lượng đơn hàng đang xử lý
function get_num_order_processing(){
    return db_num_rows("select * from `tbl_order` where `status` = 0");
}

//Lấy tổng doanh số
function get_total_sales(){
    $item = db_fetch_row("select sum(`total_price`) total_sales from `tbl_order`");
    return $item['total_sales'];
}

?>
