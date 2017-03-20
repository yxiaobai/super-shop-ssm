/**
 * Created by zhangls on 2016/11/8 0008.
 */
var FormValidation = function () {

    var handleValidationOrder = function () {

        var orderForm = $('#orderForm');
        var errorOrder = $('.alert-danger', orderForm);
        var successOrder = $('.alert-success', orderForm);

        orderForm.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                orderName: {
                    minlength: 2,
                    maxlength: 20,
                    required: true
                },
                orderAddr: {
                    minlength: 3,
                    maxlength: 10,
                    required: true
                },
                orderPhone: {
                    digits : true,
                    maxlength : 11,
                    required: true
                },
                orderTel: {
                    digits : true,
                    maxlength: 20,
                    required: true
                }
            },

            highlight: function (element) {
                $(element).closest('.form-group').addClass('has-error');
            },

            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error');
            },

            success: function (label) {
                label.closest('.form-group').removeClass('has-error');
            },

            submitHandler: function (form) {
                errorOrder.show();
                successOrder.hide();
                form.submit();
            }
        });
    }

    return {
        init: function () {
            handleValidationOrder();
        }
    };

}();
