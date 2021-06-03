var curr_page = 1;
var total_pages = 5;
var limit;

function showEmployees(str)
{
    limit =  document.getElementById("limit").value;
    console.log("page: ",curr_page);

    if(str.length == 0)
    {
        var xmlhttp = new XMLHttpRequest();

        xmlhttp.onreadystatechange = function()
        {
            if(this.readyState == 4 && this.status == 200)
            {
                document.getElementById("empTableBody").innerHTML = this.responseText;
                showTableInfo();
               
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
            total_pages = pages.length - 2;
        }
    };

    xmlhttp.open("GET", "php/EmployeePageLinks.php?limit=" + limit + "&page=" + curr_page, true);
    xmlhttp.send();
}


function showTableInfo()
{
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function()
    {
        if(this.readyState == 4 && this.status == 200)
        {
            document.getElementById("table_info").innerHTML = this.responseText;
        }
    };

    xmlhttp.open("GET", "php/EmployeeTableInfo.php?limit=" + limit + "&page=" + curr_page, true);
    xmlhttp.send();
}


function loadPage(page)
{
    curr_page = page;
    showEmployees('');
}


function next()
{
    if(curr_page == total_pages)
    {
        curr_page = 1;
    }
    else
    {
        curr_page++;
    }

    showEmployees('');
}


function prev()
{
    if(curr_page == 1)
    {
        curr_page = total_pages;
    }
    else
    {
        curr_page--;
    }
    showEmployees('');
}

function toPDF(empid){
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET","php/pdf.php?empId="+empid, true);
    xmlhttp.send();
}