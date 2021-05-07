function showDepartment(page)
{
    var limit = document.getElementById("limit").value; 
    var str = document.getElementById("search").value;
    var xmlhttp = new XMLHttpRequest(); 

    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status==200){
            document.getElementById("departmentbody").innerHTML = this.responseText;    
        }
    };
    if(str){
        xmlhttp.open("GET", "php/GetDepartments.php?limit="+limit+"&search="+str, true);
        if(page){
            xmlhttp.open("GET", "php/GetDepartments.php?limit="+limit+"&search="+str+"&page="+page, true);
        }
    }
    else{
        xmlhttp.open("GET", "php/GetDepartments.php?limit="+limit, true); 
        if(page){
            xmlhttp.open("GET", "php/GetDepartments.php?limit="+limit+"&page="+page, true); 
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
function pagination(){
    var limit = document.getElementById("limit").value; 
    var xmlhttp = new XMLHttpRequest(); 
    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status==200){
            document.getElementById("example_paginate").innerHTML = this.responseText;
        }
    };
    xmlhttp.open("GET", "php/paginate.php?limit="+limit, true);
    xmlhttp.send();
}