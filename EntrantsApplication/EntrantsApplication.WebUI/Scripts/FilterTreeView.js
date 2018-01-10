function ShowOrHideTreeView() {
    var currentActionElement = document.getElementById("filterAction");
    if (currentActionElement.innerHTML == "Show List Filter") {

        currentActionElement.innerHTML = "Hide List Filter";
        document.getElementById("filterTreeView").style.display = "block";
        var listElement = document.getElementById("entrantsList");
        listElement.style.width = "70%";
    }
    else {
        currentActionElement.innerHTML = "Show List Filter";
        document.getElementById("filterTreeView").style.display = "none";
        var listElement = document.getElementById("entrantsList");
        listElement.style.width = "100%";
    }
}