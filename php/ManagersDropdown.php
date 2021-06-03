<?php
    require_once('conn.php');

    $sql = "SELECT * FROM managers";
    $result = $conn->query($sql);

    if($result->num_rows> 0)
    {
        while($row = $result->fetch_assoc())
        {
            if(isset($data["MANAGER_ID"]))
            {
                $selected = ($data["MANAGER_ID"] == $row["MANAGER_ID"]) ? 'selected' : null;
            }
            echo "<option $selected>$row[Manager_Name]</option>";
        }
    }
?>