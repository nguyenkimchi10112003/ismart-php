$(document).ready(function () {

    var height = $(window).height() - $('#footer-wp').outerHeight(true) - $('#header-wp').outerHeight(true);
    $('#content').css('min-height', height);

//  CHECK ALL
    $('input[name="checkAll"]').click(function () {
        var status = $(this).prop('checked');
        $('.list-table-wp tbody tr td input[type="checkbox"]').prop("checked", status);
    });

// EVENT SIDEBAR MENU
    $('#sidebar-menu .nav-item .nav-link .title').after('<span class="fa fa-angle-right arrow"></span>');
    var sidebar_menu = $('#sidebar-menu > .nav-item > .nav-link');
    sidebar_menu.on('click', function () {
        if (!$(this).parent('li').hasClass('active')) {
            $('.sub-menu').slideUp();
            $(this).parent('li').find('.sub-menu').slideDown();
            $('#sidebar-menu > .nav-item').removeClass('active');
            $(this).parent('li').addClass('active');
            return false;
        } else {
            $('.sub-menu').slideUp();
            $('#sidebar-menu > .nav-item').removeClass('active');
            return false;
        }
    });

    // CHUA XONG
    // Ajax phân trang
    $(".ajax_pagging").click(function(){
        var page = $(this).attr('data-id');
        var data = {page: page};

        $.ajax({
            url: '?mod=users&controller=team&action=update_pagging', // Trang xử lý, mặc định trang hiện tại
            method: 'POST', // Post hoặc get, mặc định là get
            data: data, // dữ liệu truyền lên server 
            dataType: 'text', // html, text, script hoặc json
            success: function(data){
                console.log(data.page);
            },
            error: function(xhr, ajaxOption, thrownError){
                alert(xhr.status);
                alert(thrownError);
            }
        });
    });
});