<?php
if (isset($_POST["submit"])) {
    $full_name = $_POST["full_name"];
    $company_name = $_POST["company_name"];
    $email = $_POST["email"];
    $phone_number = $_POST["phone_number"];
    $student = $_POST["student"];
    if (!empty($full_name)&& !empty($company_name) && !empty($email) && !empty($phone_number) && !empty($student)) {
        $link =mysqli_connect("localhost", "root", "", "application");
        if ($link == false) {
            die(mysqli_connect_error());
        }

        $sql = "INSERT INTO student (full_name, company_name, email, phone_number, student) VALUES ('$full_name','$company_name','$email','$phone_number', '$student')";
        if (mysqli_query($link,$sql)) {
            echo "Record inserted successfully";
        }else{
            echo "Something went wrong";
        }
    }else {
            echo "Please provide all information";
        }
    }