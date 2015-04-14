$(document).ready(function(){
    $("#cate_form").submit(function(){
        var x=$("#cate_name").val();
        if(x=="")
        {
            alert(" Category Name should not be empty");
            return false;
        }
    });
});