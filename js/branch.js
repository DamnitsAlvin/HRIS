function pagination(){
    var limit = document.getElementById("limit").value; 
    var xmlhttp = new XMLHttpRequest(); 
    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status==200){
      
            console.log("response:" +this.responseText);
            console.log(limit);
        }
    };
    xmlhttp.open("GET", "php/paginate.php?limit="+limit, true);
    xmlhttp.send();
    console.log("PAGINATION CALLED!");
}



function showBranch(page){
    var limit = document.getElementById("limit").value; 
    var str = document.getElementById("search").value;
    var xmlhttp = new XMLHttpRequest(); 

    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status==200){
            document.getElementById("branchbody").innerHTML = this.responseText;    
        }
    };
    if(str){
        xmlhttp.open("GET", "php/GetBranch.php?limit="+limit+"&search="+str, true);
        if(page){
            xmlhttp.open("GET", "php/GetBranch.php?limit="+limit+"&search="+str+"&page="+page, true);
        }
    }
    else{
        xmlhttp.open("GET", "php/GetBranch.php?limit="+limit, true); 
        if(page){
            xmlhttp.open("GET", "php/GetBranch.php?limit="+limit+"&page="+page, true); 
        }
    }
    xmlhttp.send(); 

}
function edithandler(num){
    console.log("edit:" +num);
}
function deletehandler(num){
    console.log("delete: "+num);
}

