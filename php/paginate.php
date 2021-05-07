<?php
     require "conn.php";
     $result_db = mysqli_query($conn,"SELECT COUNT(DEPT_ID) FROM department"); 
     $row_db = mysqli_fetch_row($result_db);  
     $total_records = $row_db[0];  
     $limit=5;
     if(isset($_GET["limit"])){
        $limit = $_GET["limit"];
    }
    $total_pages = ceil($total_records / $limit); 
    $pagLink = "<ul class='pagination justify-content-end' style='margin:20px 0'>
    <li class='paginate_button page-item previous disabled' id='example_previous'>
        <a href='#'aria-controls='example' data-dt-idx='0' tabindex='0' class='page-link'>Previous</a>
    </li>"; 
    for ($i=1; $i<=$total_pages; $i++) {
        if($i==1){
                $pagLink .= "<li class='paginate_button page-item active'><a class='page-link' onclick='showDepartment($i)'>".$i."</a></li>";
        }
        else{
            $pagLink .= "<li class='paginate_button page-item'><a class='page-link' onclick='showDepartment($i)' >".$i."</a></li>";
        }	
    }
    echo $pagLink . " <li class='paginate_button page-item next' id='example_next'>
                         <a href='#' aria-controls='example' data-dt-idx='7' tabindex='0' class='page-link'>Next</a>
                        </li>
                    </ul>";
?>