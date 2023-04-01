<?php
getModel('User');

function register()
{
    $data = [
        'username' => '',
        'email' => '',
        'password' => '',
        'confirmPassword' => '',
        'usernameError' => '',
        'emailError' => '',
        'passwordError' => '',
        'confirmPasswordError' => '',
    ];

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        // Process form
        // Sanitize POST data
        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

        $data = [
            'username' => trim($_POST['username']),
            'email' => trim($_POST['email']),
            'password' => trim($_POST['password']),
            'confirmPassword' => trim($_POST['confirmPassword']),
            'usernameError' => '',
            'emailError' => '',
            'passwordError' => '',
            'confirmPasswordError' => '',
        ];

        $nameValidation = "/^[a-zA-Z0-9]*$/";

        //Validate username on letters/numbers
        if (empty($data['username'])) {
            $data['usernameError'] = 'Please enter username.';
        } elseif (!preg_match($nameValidation, $data['username'])) {
            $data['usernameError'] = 'Name can only contain letters and numbers.';
        } else {
            //Check if email exists.
            if (findUserByUsernameFunc($data['username'])) {
                $data['usernameError'] = 'Username is already taken.';
            }
        }

        //Validate email
        if (empty($data['email'])) {
            $data['emailError'] = 'Please enter email address.';
        } elseif (!filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
            $data['emailError'] = 'Please enter the correct format.';
        } else {
            //Check if email exists.
            if (findUserByEmailFunc($data['email'])) {
                $data['emailError'] = 'Email is already taken.';
            }
        }

        // Validate password on length, numeric values,
        if (empty($data['password'])) {
            $data['passwordError'] = 'Please enter password.';
        } elseif (strlen($data['password']) < 8) {
            $data['passwordError'] = 'Password must be at least 8 characters';
        }

        //Validate confirm password
        if (empty($data['confirmPassword'])) {
            $data['confirmPasswordError'] = 'Please enter password.';
        } else {
            if ($data['password'] != $data['confirmPassword']) {
                $data['confirmPasswordError'] = 'Passwords do not match, please try again.';
            }
        }
        // Make sure that errors are empty
        if (empty($data['usernameError']) && empty($data['emailError']) && empty($data['passwordError']) && empty($data['confirmPasswordError'])) {

            registerFunc($data);
            //Redirect to the login page
            redirectPage('users/login');
        }
    }
    view('users/register', $data);
}

function login()
{
    //Check for post
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        //Sanitize post data
        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

        $data = [
            'username' => trim($_POST['username']),
            'password' => trim($_POST['password']),
            'usernameError' => '',
            'passwordError' => '',
        ];
        //Validate username
        if (empty($data['username'])) {
            $data['usernameError'] = 'Please enter a username.';
        }

        //Validate password
        if (empty($data['password'])) {
            $data['passwordError'] = 'Please enter a password.';
        }

        //Check if all errors are empty
        if (empty($data['usernameError']) && empty($data['passwordError'])) {
            $loggedInUser = loginFunc($data['username'], $data['password']);

            if ($loggedInUser) {
                createUserSession($loggedInUser);
            } else {
                $data['passwordError'] = 'Password or username is incorrect. Please try again.';

                view('users/login', $data);
            }
        }

    } else {
        $data = [
            'username' => '',
            'password' => '',
            'usernameError' => '',
            'passwordError' => '',
        ];
    }
    view('users/login', $data);
}

function createUserSession($user)
{
    $_SESSION['user_id'] = $user->id;
    $_SESSION['username'] = $user->username;
    $_SESSION['email'] = $user->email;
    redirectPage('vehicles/index');
}

function logout()
{
    unset($_SESSION['user_id']);
    unset($_SESSION['username']);
    unset($_SESSION['email']);
    redirectPage('users/login');
}
