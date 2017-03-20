<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>BootstrapValidator demo</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/shop";
        request.setAttribute("path", basePath);
    %>
    <link href="${path}/assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="${path}/assets/plugins/bootstrap-validator/css/bootstrapValidator.min.css" rel="stylesheet" type="text/css">
    <!-- Global styles END -->

    <!-- Include the FontAwesome CSS if you want to use feedback icons provided by FontAwesome -->
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />-->

    <script src="${path}/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="${path}/assets/plugins/bootstrap-validator/js/bootstrapValidator.min.js" type="text/javascript"></script>
    <script src="${path}/assets/plugins/bootstrap-validator/language/zh_CN.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <!-- form: -->
        <section>
            <div class="col-lg-8 col-lg-offset-2">
                <div class="page-header">
                    <h2>Sign up</h2>
                </div>

                <form id="defaultForm" method="post" class="form-horizontal" action="target.php">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Full name</label>

                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="firstName" placeholder="First name"/>
                        </div>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="lastName" placeholder="Last name"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Username</label>

                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="username"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email address</label>

                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="email"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Password</label>

                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="password"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Retype password</label>

                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="confirmPassword"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-9 col-lg-offset-3">
                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Sign up</button>
                            <button type="submit" class="btn btn-primary" name="signup2" value="Sign up 2">Sign up 2
                            </button>
                            <button type="button" class="btn btn-info" id="validateBtn">Manual validate</button>
                            <button type="button" class="btn btn-info" id="resetBtn">Reset form</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- :form -->
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        // Generate a simple captcha
//        function randomNumber(min, max) {
//            return Math.floor(Math.random() * (max - min + 1) + min);
//        };
//        $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

        $('#defaultForm').bootstrapValidator({
            message: '中文',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                firstName: {
                    group: '.col-lg-4',
                    validators: {
                        notEmpty: {
                            message: 'firstName'
                        }
                    }
                },
                lastName: {
                    group: '.col-lg-4',
                    validators: {
                        notEmpty: {
                            message: 'lastName'
                        }
                    }
                },
                username: {
                    message: 'The username is not valid',
                    validators: {
                        notEmpty: {
                            message: 'The username is required and cannot be empty'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: 'The username must be more than 6 and less than 30 characters long'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: 'The username can only consist of alphabetical, number, dot and underscore'
                        },
                        remote: {
                            type: 'POST',
                            url: 'remote.php',
                            message: 'The username is not available'
                        },
                        different: {
                            field: 'password,confirmPassword',
                            message: 'The username and password cannot be the same as each other'
                        }
                    }
                },
                email: {
                    validators: {
                        emailAddress: {
                            message: 'The input is not a valid email address'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: 'The password is required and cannot be empty'
                        },
                        identical: {
                            field: 'confirmPassword',
                            message: 'The password and its confirm are not the same'
                        },
                        different: {
                            field: 'username',
                            message: 'The password cannot be the same as username'
                        }
                    }
                },
                confirmPassword: {
                    validators: {
                        notEmpty: {
                            message: 'The confirm password is required and cannot be empty'
                        },
                        identical: {
                            field: 'password',
                            message: 'The password and its confirm are not the same'
                        },
                        different: {
                            field: 'username',
                            message: 'The password cannot be the same as username'
                        }
                    }
                }

            }
        });

        // Validate the form manually
        $('#validateBtn').click(function () {
            var bootstrapValidator = $("#defaultForm").data('bootstrapValidator');

            alert("sdsdsdsds------ "+bootstrapValidator);

            bootstrapValidator.validate();

            alert(bootstrapValidator.isValid());

            if(bootstrapValidator.isValid()){
                alert("ddddddddddddddddddddddd");
                $("#defaultForm").submit();
            } else {
                return;
            }
//            $('#defaultForm').bootstrapValidator('validate');
        });

        $('#resetBtn').click(function () {
            $('#defaultForm').data('bootstrapValidator').resetForm(true);
        });
    });
</script>
</body>
</html>