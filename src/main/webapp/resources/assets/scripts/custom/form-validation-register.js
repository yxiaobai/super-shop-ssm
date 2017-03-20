/**
 * Created by zhangls on 2016/10/29 0029.
 */
var FormValidation = function () {

    var handleValidationRegister = function () {

        var registerForm = $('#registerForm');
        var errorRegister = $('.alert-danger', registerForm);
        var successRegister = $('.alert-success', registerForm);

        registerForm.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                userName: {
                    minlength: 5,
                    maxlength: 20,
                    required: true
                },
                realName: {
                    minlength: 3,
                    maxlength: 10,
                    required: true
                },
                email: {
                    email: true,
                    required: true
                },
                password: {
                    minlength: 5,
                    maxlength: 20,
                    required: true
                },
                confirm_password: {
                    equalTo: "#password",
                    minlength: 5,
                    maxlength: 20,
                    required: true
                },
                cellphone: {
                    digits : true,
                    maxlength : 11,
                    required: true
                },
                address: {
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
                successRegister.show();
                errorRegister.hide();
                form.submit();
            }
        });
    }

    return {
        init: function () {
            handleValidationRegister();
        }
    };

}();