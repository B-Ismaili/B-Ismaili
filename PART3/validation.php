<?php

//playlistname clean

function validUsername($username)
{
    $invalidChars = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "=", "+", " "];
    $username = str_replace($invalidChars, "", $username);

    return $username;
}

//filename
function validEmail($email)
{
    if (strlen($email) >= 6 && filter_var($email, FILTER_VALIDATE_EMAIL)) {

        return $email;
    }
}
//validation youtubes

function validPassword($password)
{
    $validPass = preg_match('/^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z]).{8,}$/', $password);
    return $validPass;
}
