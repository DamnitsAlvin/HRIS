<?php
    require_once('conn.php');

    $limit = intval($_GET["limit"]);

    $sql = "SELECT * FROM employees";
    $result = $conn->query($sql);
    $num_entries = $result->num_rows;

    $num_pages = ceil($num_entries / $limit);

    echo "<li class='paginate_button page-item previous' id='example_previous'>
            <a href='#' aria-controls='example' data-dt-idx='0' tabindex='0' class='page-link'>Previous</a>
        </li>";
    for($i = 1; $i <= $num_pages; $i++)
    {
        echo "<li class='paginate_button page-item'>
                <a href='#' id='page-$i' onclick=\"showEmployees('', this.innerHTML); setLinkActive(this.id)\" aria-controls='example' data-dt-idx='1' tabindex='0' class='page-link'>$i</a>
            </li>";
    }
    echo "<li class=paginate_button page-item next' id='example_next'>
            <a href='#' aria-controls='example' data-dt-idx='7' tabindex='0' class='page-link'>Next</a>
        </li>";
?>