<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Techno Bank log in page</title>
    <style>
        input {
            background-color: ;
            border-color: black;
            color: black;
            padding: 10px 15px;
            padding: center
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .label {
            font-size: 20px;
            color: black;
            border-bottom: 2px;
            margin-left: -10rem;
        }

        div {
            border-color: black;
        }

        .form-box {
            background-color: white;
            border-color: black;
            border: 10px;
            position: relative;
            margin-left: 35rem;
            margin-right: 35rem;
            margin-top: 1rem;
            padding: 1.5rem 1.5rem 3rem
        }

        .slogan {
            background-color: white;
            color: navy;
            font-size: 40px;
            font-style: italic;
            border: 1px solid #c9ced2;
            margin-top: -8rem;
            margin-left: 0rem;
            margin-right: 0rem;
            padding: 40px 40px 40px;
            text-align: right;
        }


        .logo {
            margin-left: 1rem;
            margin-top: 3rem;
            length = 150px;
        }

        #lgn {
            background-color: lightyellow;
            font-size: 15px;
        }

        #msg {
            display: none;
        }

        body {
            background-image: url('img/bg2.png');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;

        .header-wrapper {
            background-color: #fff;
            border-bottom: 10px solid #dcd8db;
            border-top: 10px;
            border-left: 10px;
            border-right: 1px
        }


        .valid {
            color: green;
        }

        .valid:before {
            position: relative;
            left: -35px;
            content: "&#10004;";
        }

        .invalid {
            color: red;
        }

        .invalid:before {
            position: relative;
            left: -35px;
            content: "&#10006;";
        }
    </style>

    <script>
        var myInput = document.getElementById("psw");
        var letter = document.getElementById("letter");
        var capital = document.getElementById("capital");
        var number = document.getElementById("number");
        var length = document.getElementById("length");


        myInput.onkeyup = function () {

            var lowerCaseLetters = /[a-z]/g;
            if (myInput.value.match(lowerCaseLetters)) {
                letter.classList.remove("invalid");
                letter.classList.add("valid");
            } else {
                letter.classList.remove("valid");
                letter.classList.add("invalid");
            }


            var upperCaseLetters = /[A-Z]/g;
            if (myInput.value.match(upperCaseLetters)) {
                capital.classList.remove("invalid");
                capital.classList.add("valid");
            } else {
                capital.classList.remove("valid");
                capital.classList.add("invalid");
            }


            var numbers = /[0-9]/g;
            if (myInput.value.match(numbers)) {
                number.classList.remove("invalid");
                number.classList.add("valid");
            } else {
                number.classList.remove("valid");
                number.classList.add("invalid");
            }


            if (myInput.value.length >= 8) {
                length.classList.remove("invalid");
                length.classList.add("valid");
            } else {
                length.classList.remove("valid");
                length.classList.add("invalid");
            }
        }
    </script>
    <div class="header-wrapper" role="banner">
        <img src="img/logo.png" width="200" alt="There should be image here" class="logo">
        <h2 class="slogan"> JUST ASK FOR THE BEST, WE WILL DO THE REST!</h2><br><br>
    </div>
</head>

<body>
<div style="text-align: center">
    <form class="form-box" name="loginform" action="login" method="post">
        <h1>Log in</h1>

        <label class="label">Username: <br> <input id="email" placeholder="Enter Username" type="email"
                                                   size="30"/></label><br><br><br>

        <label class="label">Password:<br> <input id="password" placeholder="Enter Password" type="password" size="30"
                                                  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                                  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                                                  required></label><br><br>

        <button id="lgn" type="submit">Log in</button>

    </form>
</div>

</body>
</html>