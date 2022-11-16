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

function info_user($field){
    global $list_user;
    if(isset($_SESSION['is_login'])){
        foreach($list_user as $item){
            if($_SESSION['user_login'] == $item['username']){
                if(array_key_exists($field,$item)){
                    return $item[$field];
                }
            }
        }
    }
    return false;
}

?>