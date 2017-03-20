/**
 * Created by zhangls on 2016/11/2 0002.
 */

$(function(){

    var typeId = $("#typeId").val();
    var pageNo = $("#pageNo").val();

    page(typeId,pageNo);
});

page = function(typeId,pageNo){

    $.post("/super-shop/shop/prolist",{"typeId":typeId,"pageNo":pageNo},function(data,status){
        if(status=='success'){
            $("#pro-list").html(data);
        }
    });
}
