<?php
    require_once('conn.php');
    $page = 1; 
    if(isset($_GET["page"])){
         $page = $_GET["page"];
     }

     $search = "where 1";
    if(isset($_GET["search"])){
         $term = "'".$_GET["search"]."%'"; 
         $search = "where DIV_NAME LIKE $term";
     }
     $limit = 5; 
    if(isset($_GET["limit"])){
         $limit= $_GET["limit"];
     }
    $rowstart = ($page-1) *$limit;
    if($limit > 0)
    {
        $sql = "SELECT * FROM users $search LIMIT $rowstart, $limit";
        $result = $conn->query($sql);

        if($result->num_rows > 0)
        {
            while($row = $result->fetch_assoc())
            {
                echo " <tr>
                        <td>$row[USER_ID]</td>
                        <td>$row[ACC_NAME]</td>
                        <td>$row[USERNAME]</td>
                        <td>$row[ROLE]</td>
                        <td>
                            <div class='emp-tab-buttons text-center'>
                                <button class='btn btn-primary text-light'> <i class='material-icons' style='font-size:16px;color:white'>info</i> view</button>
                                <button class='btn btn-primary text-light'> <i class='material-icons' style='font-size:16px'>edit</i> edit</button>
                                <button class='btn btn-primary text-light'> <i class='material-icons' style='font-size:16px;color:white'>delete</i> delete</button>
                            </div>
                        </td>
                    </tr>";
            }
        }
    }
    else
    {
        echo "<h6>Entries limit cannot be less than 1</h6>";
    }
?>