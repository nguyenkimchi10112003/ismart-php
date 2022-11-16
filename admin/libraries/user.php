<?php

function is_login(){
    if(isset($_SESSION['is_login'])){
        return true;
    }
    return false;
}

function user_login(){
    if(!empty($_SESSION['user_login'])){
        return $_SESSION['user_login'];
    }
    return false;
}

// Lấy họ và tên bởi username đăng nhập 
function get_fullname_by_username($username){
    $item = db_fetch_row("select * from `tbl_users` where `username` = '{$username}'");
    return $item['fullname'];
}


?>