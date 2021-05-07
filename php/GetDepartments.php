<?php
     require "conn.php";
     
     $limit = 5; 
     if(isset($_GET["limit"])){
         $limit= $_GET["limit"];
     }
     
     $page = 1; 
     if(isset($_GET["page"])){
         $page = $_GET["page"];
     }

     $search = "where 1";
     if(isset($_GET["search"])){
         $term = "'".$_GET["search"]."%'"; 
         $search = "where DEPT_NAME LIKE $term";
     }

     $rowstart = ($page-1) *$limit;
     $data = $conn->query("SELECT * FROM department $search LIMIT $rowstart, $limit"); 
     if(mysqli_num_rows($data)>0){
         while($row = mysqli_fetch_assoc($data)){
             echo '
             <tr>
                 <td>'.$row["DEPT_ID"].'</td>
                 <td>'.$row["DEPT_NAME"].'</td>
                 <td>'.$row["DEPT_HEAD"].'</td>
                 <td>
                     <div class="emp-tab-buttons text-center">
                         <button class="btn btn-primary text-light" onclick="deletehandler('.$row["DEPT_ID"].')" > <i class="material-icons" style="font-size:16px;color:white">delete</i> delete</button>
                         <button class="btn btn-primary text-light" onclick="edithandler('.$row["DEPT_ID"].')"> <i class="material-icons" style="font-size:16px">edit</i> edit</button>
                     </div>
                 </td>
              </tr>';
         }
     }

?>