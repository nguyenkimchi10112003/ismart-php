<?php

function construct(){
    load_model('indexCat');    
}

function indexAction(){
    $list_category = get_list_category();
    $data = array(
        'list_category' => $list_category
    );
    load_view('indexCategory',$data);
}

// Thêm một danh mục
function addAction(){
    global $error,$title,$success;
    if(isset($_POST['btn_add'])){
        $error =array();

        if(empty($_POST['title'])){
            $error['title'] = "Không được để trống trường tiêu đề";
        }else{
            $title = $_POST['title'];
        }

        $slug = $_POST['slug'];
        $parent_id = $_POST['parent_cat'];

        if(empty($error)){
            $fullname = get_fullname_by_username(user_login());
            $data = array(
                'cat_title' => $title,
                'slug' => $slug,
                'created_at' => time(),
                'creator' => $fullname,
                'parent_id' => $parent_id
            );
            add_category($data);
            $success['cat'] = "Thêm mới thành công";
        }
    }
    $list_category = get_list_category();
    $data_category = array(
        'list_category' => $list_category
    );
    load_view('addCat',$data_category);
}

// Xóa một danh mục
function deleteAction(){
    $cat_id = $_GET['cat_id'];
    delete_category_by_cat_id($cat_id);
    redirect("?mod=post&controller=indexCategory");
}

// Cập nhật danh mục
function updateAction(){
    $cat_id = $_GET['cat_id'];
    global $error,$title,$success;
    if(isset($_POST['btn_update'])){
        $error =array();

        if(empty($_POST['title'])){
            $error['title'] = "Không được để trống trường tiêu đề";
        }else{
            $title = $_POST['title'];
        }

        $slug = $_POST['slug'];

        if(empty($error)){
            $fullname = get_fullname_by_username(user_login());
            $data = array(
                'cat_title' => $title,
                'slug' => $slug,
                'updated_at' => time(),
                'updated_user' => $fullname
            );
            update_category_by_cat_id($cat_id,$data);
            $success['cat'] = "Cập nhật dữ liệu thành công";
        }
    }
    $list_category = get_list_category();
    $category_info = get_info_category_by_cat_id($cat_id);

    $data_update = array(
        'category_info' => $category_info,
        'list_category' => $list_category
    );
    load_view('updateCat',$data_update);
}
?>