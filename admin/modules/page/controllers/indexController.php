<?php

function construct(){
    load_model('index');

}

function indexAction(){
    $list_page = get_info_list_page();
    $data = array(
        'list_page' => $list_page
    );
    load_view('index',$data);
}

// Thêm trang
function addAction(){
    global $error,$success;
    if(isset($_POST['btn_add'])){
        $error = array();
        if(empty($_POST['title'])){
            $error['title'] = "Không được để trống trường tiêu đề";
        }else{
            $title = $_POST['title'];
        }

        $slug = $_POST['slug'];

        $content = $_POST['desc'];

        if(empty($error)){
            $fullname = get_fullname_by_username(user_login());
            $data = array(
                'page_title' => $title,
                'slug' => $slug,
                'content' => $content,
                'created_at' => time(),
                'creator' => $fullname
            );
            add_page($data);
            $success['page'] = "Thêm trang mới thành công";
        }
    }

    load_view('addPage');
}

// Sửa thông tin trang
function updateAction(){
    $id = (int) $_GET['id'];
    global $error,$success;
    if(isset($_POST['btn_update'])){
        $error = array();
        if(empty($_POST['title'])){
            $error['title'] = "Không được để trống trường tiêu đề";
        }else{
            $title = $_POST['title'];
        }
        $slug = $_POST['slug'];
        $content = $_POST['desc'];

        if(empty($error)){
            $fullname = get_fullname_by_username(user_login());
            $data = array(
                'page_title' => $title,
                'slug' => $slug,
                'content' => $content,
                'updated_user' => $fullname,
                'updated_at' => time()
            );
            update_page_by_id($id,$data);
            $success['page'] = "Cập nhật trang thành công";
        }
    }
    $page = get_page_by_id($id);
    $data = array(
        'page' => $page
    );
    load_view('updatePage',$data);
}

?>