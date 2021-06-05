curPage= 1; 
total_pages=5

function pagination(cat){
    var limit = document.getElementById("limit").value; 
    var xmlhttp = new XMLHttpRequest(); 
    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status==200){
            document.getElementById("pagelinks").innerHTML = this.responseText;
            pages = document.getElementsByClassName("page-link");
            total_pages = pages.length - 2;
        }
    };
    xmlhttp.open("GET", "php/paginate.php?limit="+limit+"&curpage="+curPage+"&cat="+cat, true);
    xmlhttp.send();
}

function showTableInfo(cat)
{
    var xmlhttp = new XMLHttpRequest();
    var limit = document.getElementById("limit").value; 

    xmlhttp.onreadystatechange = function()
    {
        if(this.readyState == 4 && this.status == 200)
        {
            document.getElementById("table_info").innerHTML = this.responseText;
        }
    };

    xmlhttp.open("GET", "php/tableinfo.php?limit=" + limit + "&page=" + curPage+ "&cat="+cat, true);
    xmlhttp.send();
}


function showUsers(page){
    var limit = document.getElementById("limit").value; 
    var str = document.getElementById("search").value;
    var xmlhttp = new XMLHttpRequest(); 

    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status==200){
            document.getElementById("usersTableBody").innerHTML = this.responseText;
            showTableInfo("C");
            pagination("C");
        }
    };
    if(str){
        xmlhttp.open("GET", "php/GetUsers.php?limit="+limit+"&search="+str, true);
        if(page){
            curPage=page;
            xmlhttp.open("GET", "php/GetUsers.php?limit="+limit+"&page="+page, true); 
        }
    }
    else{
        xmlhttp.open("GET", "php/GetUsers.php?limit="+limit, true); 
        if(page){
            curPage=page;
            xmlhttp.open("GET", "php/GetUsers.php?limit="+limit+"&page="+page, true); 
        }
    }
    xmlhttp.send(); 
    

}
function edithandler(num){
    console.log("edit:" +num);
}
function deletehandler(num){
    if(confirm("Are you sure you want to delete User_id "+num+"?")){
        var xmlhttp = new XMLHttpRequest(); 
        xmlhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status==200){
                alert(this.response);
                showDepartment();
            }
        }
        xmlhttp.open("GET", "php/DeleteIdentity.php?Id="+num+"&cat=B", true); 
        xmlhttp.send();
       
    }
    else{
        alert("You did the right choice! 👍");
    }
    
}
function nexthandler(){
    if(curPage == total_pages){
        curPage = 1; 
    }
    else{
        curPage++;
    }
    showBranch(curPage);
}

function previoushandler(){
    if(curPage==1){
        curPage=total_pages; 
    }
    else{
        curPage--;
    }
    showBranch(curPage);
}

