<?php
    session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HRIS | Add Employee</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="icon" href="logo.png">
</head>
<body>
    <div class="container-fluid wrapper">
        <nav class="navbar navbar-expand-md navbar-light mb-2">
            <div class="container-fluid">
                <a href="index.php" class="navbar-brand mr-5">
                    <img src="logo.png" width="" height="" class="navlogo" alt="" loading="lazy" >
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse"
                data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>    
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link text-light active" href="employee-tab.php">Employees</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a class="nav-link dropdown-toggle text-light " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Utilities
                            </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item " href="branches-tab.php">Branches</a>
                                <a class="dropdown-item" href="department-tab.php">Departments</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-light " href="users_tab.php">Users</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a class="nav-link dropdown-toggle text-light " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Reports
                            </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item " href="reports.php">List of Employees</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Welcome,<?php
                                echo htmlspecialchars($_SESSION["username"], ENT_QUOTES, 'UTF-8');
                                //substr(ucfirst(strtolower($_SESSION["username"])), 0 , strpos(ucfirst(strtolower($_SESSION["username"])), " "))
                            ?>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                             <a class="dropdown-item" target="_blank" <?php echo 'href="php/pdf.php?empId='.$_SESSION['id'].'&mode=I"' ?>>Profile</a> <!-- just show pdf here -->
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="php/logout.php">Log Out</a>
                        </div>
                    </li>
                  </ul>
                </div>
            </div>    
        </nav>

        <div class="container">
            <div class="row">
                <div class="d-flex flex-column mx-auto w-100 pb-5">
                    <div class="text-center">
                        <h2 class="p-5">ADD EMPLOYEE</h2>
                    </div>
                    <form id="add-employee-form" action="php/AddEmployee.php" method="POST">

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="firstname">First Name:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="firstname" name="fname">
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="lastname">Last Name:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="lastname" name="lname">
                                </div>
                            </div>
                        </div>
                        
                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="middlename">Middle Name:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="middlename" name="mname">
                                </div>
                            </div>
                        </div>
                        
                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="address">Address:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="address" name="address">
                                </div>
                            </div>
                        </div>
                        
                        <div class="add-emp-form-check form-check p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="sex">Sex:</label>
                                </div>
                                <div class="col d-flex">
                                    <label class="radio-inline pr-5"><input type="radio" name="sex" value="FEMALE" checked> Female</label>
                                    <label class="radio-inline pl-5"><input type="radio" name="sex" value="MALE"> Male</label>
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="date-of-birth">Date of Birth:</label>
                                </div>
                                <div class="col">
                                    <input type="date" class="form-control border-secondary" id="date-of-birth" name="dob">
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="place-of-birth">Place of Birth:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="place-of-birth" name="pob">
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="contact-number">Contact Number:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="contact-number" name="contact">
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="civil-status">Civil Status:</label>
                                </div>
                                <div class="col">
                                    <select class="form-control border-secondary" id="civil-status" name="civilstatus">
                                        <option>Single</option>
                                        <option>Married</option>
                                        <option>Widowed</option>
                                        <option>Divorced</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="position">Position:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="position" name="position">
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="department">Department:</label>
                                </div>
                                <div class="col">
                                    <select class="form-control border-secondary" id="department" name="department">
                                        <?php require_once('php/DepartmentsDropdown.php');?>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="branch">Branch:</label>
                                </div>
                                <div class="col">
                                    <select class="form-control border-secondary" id="branch" name="branch">
                                        <?php require_once('php/BranchDropwdown.php');?>
                                    </select>   
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="work-status">Work Status:</label>
                                </div>
                                <div class="col">
                                    <select class="form-control border-secondary" id="work-status" name="workstatus">
                                        <option>REGULAR</option>
                                        <option>PART-TIME</option>
                                        <option>INTERN</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="hired-date">Hired Date:</label>
                                </div>
                                <div class="col">
                                    <input type="date" class="form-control border-secondary" id="hired-date" name="hireddate">
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="branch">Manager:</label>
                                </div>
                                <div class="col">
                                    <select class="form-control border-secondary" id="manager" name="manager">
                                        <?php require_once('php/ManagersDropdown.php');?>
                                    </select>   
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="salary">Salary:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="salary" name="salary">
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-form-group p-2">
                            <div class="row d-flex align-items-center">
                                <div class="col-4 px-5 d-flex justify-content-end">
                                    <label for="commission">Commission:</label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control border-secondary" id="commission" name="commission">
                                </div>
                            </div>
                        </div>

                        <div class="add-emp-buttons text-center w-100 pt-5">
                            <button type="reset" class="btn add-emp-button mx-3 text-light">Cancel</button>
                            <button type="submit" class="btn add-emp-button mx-3 text-light">Add</button>
                        </div>

                    </form>
                </div>
                
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>