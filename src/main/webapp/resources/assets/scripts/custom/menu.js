
$(function () {

    $.get("/super-shop-ssm/menu/list", {}, function (data, status) {

        if (status == 'success') {
            $.each(data[0], function (i, val) {
                var menuStyle = val.menuStyle;

                switch (parseInt(menuStyle)) {
                    case 1 :
                        menuStyle1(val, data);
                        break;
                    case 2 :
                        menuStyle2(val, data);
                        break;
                    case 3 :
                        //$.post("/super-shop-ssm/menu/pro", {"menuId": val.id}, function (dd, ss) {
                        //    menuStyle3(val, data, dd);
                        //});
                        break;
                    case 4 :
                        menuStyle4(val, data);
                        break;
                    default :
                        menuStyle4(val, data);
                        break;
                }
            });
        }
    }, 'json');
});

/**
 * @param val
 */
menuStyle1 = function (val, jsonObj) {
    var plist = "/super-shop-ssm" + val.menuUri + "?pageNo=1&typeId=" + val.typeId;

    var htmlStr = '<li class="dropdown">';

    htmlStr += '<a class="dropdown-toggle" href="' + plist + '">' +
        val.typeName + '<i class="fa fa-angle-down"></i></a>';

    if (jsonObj[val.typeId].length != 0) {
        htmlStr += '<ul class="dropdown-menu" aria-labelledby="mega-menu"><li><div class="nav-content">';

        $.each(jsonObj[val.typeId], function (i, v) {
            htmlStr += '<div class="nav-content-col"><h3>' + v.typeName + '</h3>';
            htmlStr += '<ul>';

            if (jsonObj[v.typeId].length != 0) {
                $.each(jsonObj[v.typeId], function (ix, va) {
                    plist = "/super-shop" + va.menuUri + "?pageNo=1&typeId=" + va.typeId;

                    htmlStr += '<li><a href="' + plist + '">' + va.typeName + '</a></li>';
                });
            }

            htmlStr += '</ul>';
            htmlStr += '</div>';

        });
        htmlStr += '</div></li></ul>';
    }

    htmlStr += "</li>";

    $("#menuItem").prepend(htmlStr);
};

/**
 * @param val
 */
menuStyle2 = function (val, jsonObj) {
    var plist = "/super-shop-ssm" + val.menuUri + "?pageNo=1&typeId=" + val.typeId;

    var htmlStr = '<li class="dropdown">';

    htmlStr += '<a class="dropdown-toggle" href="' + plist + '">' + val.typeName + '<i class="fa fa-angle-down"></i></a>';

    if (jsonObj[val.typeId].length != 0) {
        htmlStr += '<ul class="dropdown-menu">';

        $.each(jsonObj[val.typeId], function (i, v) {

            if (jsonObj[v.typeId].length != 0) {
                htmlStr += '<li class="dropdown-submenu">';
                htmlStr += '<a href="' + v.menuUri + '">' + v.typeName + '<i class="fa fa-angle-right"></i></a>';
                htmlStr += '<ul class="dropdown-menu">';

                htmlStr += menuType(plist, htmlStr, jsonObj, v.typeId);

                htmlStr += '</ul>';
                htmlStr += '</li>';
            } else {
                htmlStr += '<li><a href="' + v.menuUri + '">' + v.typeName + '</a></li>';
            }
        });

        htmlStr += '</ul>';
    }

    htmlStr += "</li>";

    $("#menuItem").prepend(htmlStr);

};

/**
 * 递归
 * @param plist
 * @param str
 * @param jsonObj
 * @param id
 * @returns {string}
 */
menuType = function (plist, str, jsonObj, id) {
    var str = "";

    $.each(jsonObj[id], function (ix, va) {
        plist = "/super-shop-ssm" + va.menuUri + "?pageNo=1&typeId=" + va.typeId;
        str += '<li><a href="' + plist + '">' + va.typeName + '</a></li>';

        if (jsonObj[id].length != 0) {
            menuType(plist, str, jsonObj, va.typeId);
        }
    });

    return str;
}


/**
 * @param val
 */
menuStyle3 = function (val, jsonObj, data) {

    var obj = eval('(' + data + ')');

    var htmlStr = '<li class="dropdown">';

    htmlStr += '<a class="dropdown-toggle" data-toggle="dropdown" data-delay="0" data-close-others="false" data-target="product-list.html" href="#">' +
        val.menuName + '<i class="fa fa-angle-down"></i></a>';

    if (jsonObj[val.id].length != 0) {
        htmlStr += '<ul class="dropdown-menu" aria-labelledby="mega-menu-catalogue"><li><div class="nav-content">';
        $.each(obj, function (i, v) {
            htmlStr += ' <div class="product-item">';
            htmlStr += '<div class="pi-img-wrapper">';
            htmlStr += '<a href="/super-shop/shop/proDet?pId=' + v.id + '"><img src="' + v.proPicUri + '" class="img-responsive" alt="' + v.proName + '"></a>';
            htmlStr += '</div>';
            htmlStr += '<h3><a href="/super-shop/shop/proDet?pId=' + v.id + '">' + v.proName + '</a></h3>';
            htmlStr += '<div class="pi-price">' + v.proNowPrice + '</div>';
            htmlStr += '<a href="/super-shop/shop/addCar?proId=' + v.id + '&proPrice=' + v.proNowPrice + '" class="btn btn-default add2cart">' + v.proDesc + '</a>';
            htmlStr += '</div>';

        });

        htmlStr += "</div></li></ul>";
    }

    htmlStr += "</li>";

    $("#menuItem").prepend(htmlStr);
};


/**
 * @param val
 */
menuStyle4 = function (val, jsonObj) {
    var htmlStr = '<li><a href="/super-shop' + val.menuUri + '">' + val.menuName + '</a></li>';
    $("#menuItem").prepend(htmlStr);
};
