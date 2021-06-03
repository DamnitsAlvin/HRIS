<?php
    session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HRIS | Department</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="styless.css">
    <link rel="icon" href="logo.png">
</head>
<body onload="showDepartment()" >
    <div class="container-fluid wrapper">
        <!-- NAVBAR -->
        <?php
            include 'header.php';
        ?>
        <!-- TITLE -->
        <div class="text-center">
<<<<<<< HEAD
            <h2 class="p-5">DEPARTMENT  <a class="btn btn-primary text-light" style="padding: 0px 4px;" href="add-dept.php">+ New</a></h2>
=======
            <h2 class="p-5">DEPARTMENT </h2>
>>>>>>> 2b59e284f72f40672a3c5017bb7642e8b019ef65
        </div>
        <!-- SEARCH BAR -->
        <div class="container">
            <div class="table-wrapper">
                <div class="d-flex">
                    <div class="p-2">Show</div> <input type="number" class="form-control col-1 text-center" id="limit" value=5 min =1 onchange="showDepartment()">
                    <div class="p-2">Entries</div>
                    <div class="ml-auto p-2">Search</div> <input type="text" class="form-control col-2" id="search" onkeyup="showDepartment()" >
                  </div>
            </div>
        </div>
        <!-- TABLE -->
        <div class="container">
            <div class="table-wrapper">
                <table class="table table-striped table-hover text-center">
                    <thead>
                        <tr>
                            <th>DEPARTMENT ID</th>
                            <th>DEPARTMENT NAME</th>
                            <th>DEPARTMENT HEAD</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>
                    <tbody id="departmentbody">
        
                    </tbody>
                </table>
            </div>
        </div>
        <!-- SHOWING -->
        <div class="container">
            <div class="table-wrapper">
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <div class="dataTables_info" id="table_info" role="status" aria-live="polite"><!--JavaScript will fill this part--></div>
                    </div>
                    <div class="col-sm-12 col-md-7">
                        <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
                            <ul id="pagelinks" class="pagination justify-content-end" style="margin:20px 0">
                                <!--JavaScript will fill this part-->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script src = "js/department.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
    </html>