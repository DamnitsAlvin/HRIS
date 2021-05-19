curPage= 1; 
total_pages=5

function pagination(cat){
    var limit = document.getElementById("limit").value; 
    var xmlhttp = new XMLHttpRequest(); 
    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status==200){
            document.getElementById("pagelinks").innerHTML = this.responseText;
            console.log("page: "+curPage);
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

function nexthandler(){
    if(curPage == total_pages){
        curPage = 1; 
    }
    else{
        curPage++;
    }
    showUsers(curPage);
}

function previoushandler(){
    if(curPage==1){
        curPage=total_pages; 
    }
    else{
        curPage--;
    }
    showUsers(curPage);
}

function showUsers(page)
{
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
        xmlhttp.open("GET", "php/GetUserss.php?limit="+limit+"&search="+str, true);
        if(page){
            xmlhttp.open("GET", "php/GetUsers.php?limit="+limit+"&search="+str+"&page="+page, true);
            curPage=page;
        }
    }
    else{
        xmlhttp.open("GET", "php/GetUsers.php?limit="+limit, true); 
        if(page){
            xmlhttp.open("GET", "php/GetUsers.php?limit="+limit+"&page="+page, true); 
            curPage=page;
        }
    }
    xmlhttp.send()

}






function edithandler(num){
    console.log("edit:" +num);
}
function deletehandler(num){
    console.log("delete: "+num);
}
