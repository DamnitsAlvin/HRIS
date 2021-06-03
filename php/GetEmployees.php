<?php
    require_once('conn.php');

    $limit = intval($_GET["limit"]);
    $curr_page = intval($_GET["page"]);
    $start = ($curr_page - 1) * $limit;
    

    if($limit >= 1)
    {
        $sql = "SELECT * FROM employees LIMIT $start, $limit";
        $result = $conn->query($sql);

        if($result->num_rows > 0)
        {
            while($row = $result->fetch_assoc())
            {
                echo "<tr>
                        <td>$row[EMP_ID]</td>
                        <td>$row[FNAME] $row[MNAME] $row[LNAME]</td>
                        <td>020202</td>
                        <td>$row[MANAGER_ID]</td>
                        <td>$row[DEPT_ID]</td>
                        <td>$row[WORK_STATUS]</td>
                        <td>
                            <div class='emp-tab-buttons text-center'>
                                <button class='btn btn-primary text-light'> <i class='material-icons' style='font-size:16px;color:white'>info</i> view</button>
                                <button class='btn btn-primary text-light'> <i class='material-icons' style='font-size:16px'>edit</i> edit</button>
                                <button class='btn btn-primary text-light'> <i class='material-icons' style='font-size:16px' onClick='toPDF($row[EMP_ID])'>print</i> print</button>
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