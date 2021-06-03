<?php
require_once __DIR__ . '/vendor/autoload.php';
require "conn.php"; 

$empId = $_GET["empId"];
$mpdf = new \Mpdf\Mpdf();

$result_db = mysqli_query($conn,"SELECT * FROM employees where EMP_ID = $empId");
$row_db = mysqli_fetch_row($result_db); 


$data="Employee Data Sheet"."<br>";
$data .= "<strong>Employee ID: </strong>". $row_db[0]. "<br>";
$data .= "<strong>First Name: </strong>". $row_db[1]. "<br>";
$data .= "<strong>Middle Name: </strong>". $row_db[2]. "<br>";
$data .= "<strong>Last Name: </strong>". $row_db[3]. "<br>";
$data .= "<strong>Address: </strong>". $row_db[4]. "<br>";
$data .= "<strong>Sex: </strong>". $row_db[5]. "<br>";
$data .= "<strong>Date of Birth: </strong>". $row_db[6]. "<br>";
$data .= "<strong>Place of Birth: </strong>". $row_db[7]. "<br>";
$data .= "<strong>Contact Number: </strong>". $row_db[8]. "<br>";
$data .= "<strong>Civil Status: </strong>". $row_db[9]. "<br>";
$data .= "<strong>Position: </strong>". $row_db[10]. "<br>";
$data .= "<strong>Dept_ID: </strong>". $row_db[11]. "<br>";
$data .= "<strong>Div_ID: </strong>". $row_db[12]. "<br>";
$data .= "<strong>Work Status: </strong>". $row_db[13]. "<br>";
$data .= "<strong>Hired Date: </strong>". $row_db[14]. "<br>";
$data .= "<strong>Manager ID: </strong>". $row_db[15]. "<br>";
$data .= "<strong>Salary: </strong>". $row_db[16]. "<br>";
$data .= "<strong>Commission: </strong>". $row_db[17]. "<br>";

$mpdf->WriteHTML($data); 
$mpdf->Output("document.pdf", "D");
?>