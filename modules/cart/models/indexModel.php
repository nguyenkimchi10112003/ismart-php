<?php

// Lấy thông tin sản phẩm theo id
function get_info_product_by_id($id){
    return db_fetch_row("select * from `tbl_product`
    where `product_id` = {$id}");
}

?>