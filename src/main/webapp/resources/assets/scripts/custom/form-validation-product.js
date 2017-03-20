/**
 * Created by zhangls on 2016/11/12 0012.
 */
/**
 * http://www.runoob.com/jquery/jquery-plugin-validate.html
 * @type {{init}}
 */
var FormValidation = function () {

    var handleValidationAddPro = function() {

        var addProForm = $('#addProForm');
        var errorAddPro = $('.alert-danger', addProForm);
        var successAddPro = $('.alert-success', addProForm);

        addProForm.validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                proName: {
                    minlength: 5,
                    maxlength: 20,
                    required: true
                },
                realPrice: {
                    required: true
                },
                nowPrice: {
                    required: true
                },
                proScore: {
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
                successAddPro.show();
                errorAddPro.hide();
                form.submit();
            }
        });
    }

    return {
        init: function () {
            handleValidationAddPro();
        }
    };

}();