<?php
session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HRIS | Branches</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="styless.css">
    <link rel="icon" href="logo.png">
</head>
<body>
    <div class="container-fluid wrapper">
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-md navbar-light mb-2">
            <div class="container-fluid">
                <a href="index.html" class="navbar-brand mr-5">
                    <img src="logo.png" width="" height="" class="navlogo" alt="" loading="lazy" >
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse"
                data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>    
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                      <a class="nav-link text-light active" href="wip.html">Employees</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-light" href="wip.html">Utilities</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Welcome,
                            <?php
                                echo $_SESSION["username"];
                                //substr(ucfirst(strtolower($_SESSION["username"])), 0 , strpos(ucfirst(strtolower($_SESSION["username"])), " "))
                            ?>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="wip.html">Profile</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="php/logout.php">Log Out</a>
                        </div>
                    </li>
                  </ul>
                </div>
            </div>    
        </nav>
        <!-- TITLE -->
        <div class="text-center">
            <h2 class="p-5">Branches</h2>
            <?php

            ?>
        </div>
        <!-- SEARCH BAR -->
        <div class="container">
            <div class="table-wrapper">
                
                <div class="d-flex">
                <div class="p-2">Show</div>
                     <form method="GET" action = "">
                        <input type="text" name="entries" class="form-control col-1 text-center"
                        <?php 
                            if(isset($_GET["entries"])){
                            echo 'placeholder="'.$_GET["entries"].'"';
                            }
                        ?>>
                    </form>
        
                    <div class="ml-auto p-2">Search</div> 
                    <form method="GET" action="">
                        <input type="text" class="form-control col-2" name="search"
                        <?php 
                            if(isset($_GET["search"])){
                            echo 'placeholder="'.$_GET["search"].'"';
                            }
                        ?>>
                </div>
              
            </div>
        </div>
        <!-- TABLE -->
        <div class="container">
            <div class="table-wrapper">
                <table class="table table-striped table-hover text-center">
                    <thead>
                        <tr>
                            <th>BRANCH_ID</th>
                            <th>BRANCH_NAME</th>
                            <th>ADDRESS</th>
                            <th>BRANCH_MANAGER</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        require "php/conn.php";

                        $limit = 5; 
                        if(isset($_GET["entries"])){
                            $limit= $_GET["entries"];
                        }
                        
                        $page = 1; 
                        if(isset($_GET["page"])){
                            $page = $_GET["page"];
                        }

                        $search = "where 1";
                        if(isset($_GET["search"])){
                            $term = "'".$_GET["search"]."%'"; 
                            $search = "where DIV_NAME LIKE $term";
                        }

                        $rowstart = ($page-1)*$limit; 
                        $data = $conn->query("SELECT * FROM division $search LIMIT $rowstart, $limit"); 
                        if(mysqli_num_rows($data)>0){
                            while($row = mysqli_fetch_assoc($data)){
                                $managerid = $row['DIV_MANAGER'];
                                $managername = mysqli_fetch_assoc($conn->query("SELECT Manager_Name FROM managers where MANAGER_ID='$managerid' "));
                                echo '
                                <tr>
                                    <td>'.$row['DIV_ID'].'</td>
                                    <td>'.$row['DIV_NAME'].'</td>
                                    <td>'.$row['LOCATION'].'Pasay</td>
                                    <td>'.$managername['Manager_Name'].'</td>
                                    <td>
                                        <div class="emp-tab-buttons text-center">
                                            <button class="btn btn-primary text-light"> <i class="material-icons" style="font-size:16px;color:white">info</i> view</button>
                                            <button class="btn btn-primary text-light"> <i class="material-icons" style="font-size:16px">edit</i> <a href="branches-tab.php?user='.$row["DIV_ID"].'">edit</a></button>
                                            <button class="btn btn-primary text-light"> <i class="material-icons" style="font-size:16px">print</i> print</button>
                                        </div>
                                    </td>
                                </tr>';
                            }
                        }
                    ?>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- SHOWING -->
        <div class="container">
            <div class="table-wrapper">
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                            <?php 
                            $result_db = mysqli_query($conn,"SELECT COUNT(DIV_ID) FROM division");  
                            $row_db = mysqli_fetch_row($result_db);  
                            $total_records = $row_db[0];  

                            ?>
                        <div class="dataTables_info" id="example_info" role="status" aria-live="polite">Showing <?php echo $rowstart. " to " .$limit. " of ". $total_records; ?> entries</div>
                    </div>
                    <div class="col-sm-12 col-md-7">
                        <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
                                 <?php  
                                $result_db = mysqli_query($conn,"SELECT COUNT(DIV_ID) FROM division"); 
                                $row_db = mysqli_fetch_row($result_db);  
                                $total_records = $row_db[0];  
                                $total_pages = ceil($total_records / $limit); 
                                /* echo  $total_pages; */
                                $pagLink = "<ul class='pagination justify-content-end' style='margin:20px 0'>
                                                <li class='paginate_button page-item previous disabled' id='example_previous'>
                                                    <a href='#'aria-controls='example' data-dt-idx='0' tabindex='0' class='page-link'>Previous</a>
                                                </li>";  
                                for ($i=1; $i<=$total_pages; $i++) {
                                            $pagLink .= "<li class='paginate_button page-item active'><a class='page-link' href='branches-tab.php?page=".$i."'>".$i."</a></li>";	
                                }
                                echo $pagLink . " <li class='paginate_button page-item next' id='example_next'>
                                                     <a href='#' aria-controls='example' data-dt-idx='7' tabindex='0' class='page-link'>Next</a>
                                                    </li>
                                                </ul>";  
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
    </html>