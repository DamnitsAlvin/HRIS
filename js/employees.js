function showEmployees(str, page = 1)
{
   var limit = document.getElementById("limit").value;
   var curr_page = page;

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

        xmlhttp.open("GET", "php/GetEmployees.php?limit=" + limit + "&page=" + curr_page, true);
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

    showPageLinks(limit);
}

function showPageLinks(lim)
{
    var limit = lim;
    
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function()
    {
        if(this.readyState == 4 && this.status == 200)
        {
            document.getElementById("pagelinks").innerHTML = this.responseText;
        }
    };

    xmlhttp.open("GET", "php/EmployeePageLinks.php?limit=" + limit, true);
    xmlhttp.send();
}

function setLinkActive(pagelink)
{
    var element = document.getElementById(pagelink);
    element.classList.add("active");
}