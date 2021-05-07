function showEmployees(str)
{
   var limit = document.getElementById("limit").value;

    if(str.length == 0)
    {
        var xmlhttp = new XMLHttpRequest();

        xmlhttp.onreadystatechange = function()
        {
            if(this.readyState == 4 && this.status == 200)
            {
                document.getElementById("empTableBody").innerHTML = this.responseText;
            }
        };

        xmlhttp.open("GET", "php/GetEmployees.php?limit=" + limit, true);
        xmlhttp.send();
    }
    else
    {
        var xmlhttp = new XMLHttpRequest();

        xmlhttp.onreadystatechange = function()
        {
            if(this.readyState == 4 && this.status == 200)
            {
                document.getElementById("empTableBody").innerHTML = this.responseText;
            }
        };

        xmlhttp.open("GET", "php/SearchEmployee.php?limit=" + limit + "&toSearch=" + str, true);
        xmlhttp.send();
    }
}