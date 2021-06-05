<?php
    require_once "conn.php"; 

    $ID = $_GET["Id"]; 
    
    if($_GET["cat"]=="A"){
        $table = "department";
        $criteria = "DEPT_ID=$ID";
    }
    else{
        $table = "users"; 
        $criteria = "USER_ID= $ID";
    }

    $sql = "DELETE FROM $table where $criteria"; 
    if(mysqli_query($conn, $sql)){
        echo "Records was deleted  👎";
    }
    else{
        echo "There was an error🤕"; 
    }

?>