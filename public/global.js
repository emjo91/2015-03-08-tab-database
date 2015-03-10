// view
// create
// edit
// terminate = delete

// DISCLAIMER: PROBS GONNA HAVE TO REFACTOR A LOT //

window.onload = function(){
  // VIEW //
  var view = document.getElementById("view");
  var viewA = document.getElementsByTagName("a")[0]; 
  var viewLI = document.getElementsByTagName("li")[0];
  
  // CREATE // 
  var create = document.getElementById("create");
  var createA = document.getElementsByTagName("a")[1]; 
  var createLI = document.getElementsByTagName("li")[1]; 
  
  // EDIT //
  var edit = document.getElementById("edit");
  var editA = document.getElementsByTagName("a")[2]; 
  var editLI = document.getElementsByTagName("li")[2];
  
  // TERMINATE //
  var terminate = document.getElementById("terminate");
  var terminateA = document.getElementsByTagName("a")[3]; 
  var terminateLI = document.getElementsByTagName("li")[3];
  
  // GET RESULTS //
  var results = document.getElementById("results")
  var viewR = document.getElementById("view-result")
  var createR = document.getElementById("create-result")
  var editR = document.getElementById("edit-result")
  var terminateR = document.getElementById("terminate-result")

  
  
  // Viewing the View Page //
  viewA.addEventListener("click", function(){
    view.className = "active";
    create.className = "hidden";
    edit.className = "hidden";
    terminate.className = "hidden";
    results.className = "hidden";
  });
  
  // Viewing the Create Page //
  createA.addEventListener("click", function(){
    create.className = "active";
    view.className = "hidden";
    edit.className = "hidden";
    terminate.className = "hidden";
    results.className = "hidden";
  });
  
  // Viewing the Edit Page //
  editA.addEventListener("click", function(){
    edit.className = "active";
    view.className = "hidden";
    terminate.className = "hidden";
    create.className = "hidden";
    results.className = "hidden";
  });
  
  // Viewing the Delete Page //
  terminateA.addEventListener("click", function(){
    terminate.className = "active";
    view.className = "hidden";
    edit.className = "hidden";
    create.className = "hidden";
    results.className = "hidden";
  });
    
  // Adding results to the View Page //
  viewR.addEventListener("click", function(){
    var request = new XMLHttpRequest;
    // var id =
    request.open("get", "http://localhost:4567/view/" + id);
    request.send();
    // request.addEventListener("load" function(){
    //   var object = JSON.parse(request.response);
    //   results.className = "active-result";
    //   document.getElementById("results").innerHTML = "<h3>" + object.general_info + "</h3>" +
    //   "<p>" + object.technical_specs + object.where_to_buy + "</p>";
    // });
  });
  
  // Adding results to the Create Page //
  createR.addEventListener("click", function(){
    results.className = "active-result";
  });
  
  // Adding results to the Edit Page //
  editR.addEventListener("click", function(){
    results.className = "active-result";
  });
  
  // Adding results to the Terminate Page //
  // Need to SEND JSON here. May need to add a load eventListener for result // 
  // Do I need to somehow add an id verifier?? //
  terminateR.addEventListener("click", function(){
    var request = new XMLHttpRequest;
    request.open("get", "http://localhost:4567/delete/" + id); //id is not defined...is the problem
    request.send();
    request.addEventListener("load", function(){
      results.className = "active-result"; //addEventListener??
    });
    
  });
  
  
  
} //end window.onload