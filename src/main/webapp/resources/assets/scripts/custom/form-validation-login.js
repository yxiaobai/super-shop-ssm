/**
 * http://www.runoob.com/jquery/jquery-plugin-validate.html
 * @type {{init}}
 */
var FormValidation = function () {

    var handleValidationLogin = function() {

        var loginForm = $('#loginForm');
        var errorLogin = $('.alert-danger', loginForm);
        var successLogin = $('.alert-success', loginForm);

        loginForm.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                username: {
                    minlength: 5,
                    maxlength: 20,
                    required: true
                },
                password: {
                    minlength: 5,
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
                successLogin.show();
                errorLogin.hide();
                form.submit();
            }
        });
    }

    return {
        init: function () {
            handleValidationLogin();
        }
    };

}();