<?php
    require_once('conn.php');

    $first_name = $_POST["fname"];
    $last_name = $_POST["lname"];
    $middle_name = $_POST["mname"];
    $address = $_POST["address"];
    $sex = $_POST["sex"];
    $date_of_birth = $_POST["dob"];
    $place_of_birth = $_POST["pob"];
    $contact_number = $_POST["contact"];
    $civil_status = $_POST["civilstatus"];
    $position = $_POST["position"];
    $work_status = $_POST["workstatus"];
    $hired_date = $_POST["hireddate"];
    $salary = intval($_POST["salary"]);
    $commission = intval($_POST["commission"]);

    $department_name = $_POST["department"];
    $sql = "SELECT DEPT_ID FROM department WHERE DESCRIPTION = '$department_name'";
    $result = $conn->query($sql);
    $assoc = $result->fetch_assoc();
    $department_id = $assoc["DEPT_ID"];

    
    $branch_name = $_POST["branch"];
    $sql = "SELECT DIV_ID FROM division WHERE DIV_NAME = '$branch_name'";
    $result = $conn->query($sql);
    $assoc = $result->fetch_assoc();
    $branch_id = $assoc["DIV_ID"];


    $manager_name = $_POST["manager"];
    $sql = "SELECT MANAGER_ID FROM managers WHERE Manager_Name = '$manager_name'";
    $result = $conn->query($sql);
    $assoc = $result->fetch_assoc();
    $manager_id = $assoc["MANAGER_ID"];


    $stmt = $conn->prepare("INSERT INTO employees (FNAME, MNAME, LNAME, ADDRESS, SEX, DOB, PLACE_OF_BIRTH, CONTACT_NUM, CIVIL_STATUS, POSITION, DEPT_ID, DIV_ID, WORK_STATUS, HIRED_DATE, MANAGER_ID, SALARY, COMMISSION) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssssssssiissiii", $first_name, $middle_name, $last_name, $address, $sex, $date_of_birth, $place_of_birth, $contact_number, $civil_status, $position, $department_id, $branch_id, $work_status, $hired_date, $manager_id, $salary, $commission);
    $stmt->execute();
    $stmt->close();
    header('location: ../employee-tab.php');
    die();
?>