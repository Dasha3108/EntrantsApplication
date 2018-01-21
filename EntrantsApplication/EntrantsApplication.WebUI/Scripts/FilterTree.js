function showTree() {
    $("#filterAction").click(function (event) {
        $(function () {
            $('#jstree').jstree({
                'core': {
                    'data': {
                        "url": "/jsonData/Faculties.json",
                        "dataType": "json"
                    },
                    "themes": {
                        "icons": false
                    }
                },
                'checkbox': {
                    tie_selection: false
                },
                'plugins': ["checkbox"]
            })
        });
    });
}

//<div style="background-color : lightblue; font-size:20px; font-weight:700; text-align:center; margin-bottom:30px">
//    <div style="font-size:30px">
//        @Html.DisplayFor(modelItem => item.EntrantName)
//                        </div>
//    <p>@Html.DisplayFor(modelItem => item.DateOfTheBirth)</p>
//    @using (Html.BeginForm("FullEntrantInformation", "Entrants",
//new {entrantId = item.EntrantId}))
//                        {
//        <div>
//            @Html.HiddenFor(modelItem => item.EntrantId)
//                                <input type="submit" value="Watch" />
//            <p>@Html.ActionLink("Show Info Bellow", "List", new {entrantId = item.EntrantId})</p>
//        </div>
//    }
//</div>

function successTree(data) {
    console.log(data);
    var entrantsList = document.getElementById("entrantsList");
    entrantsList.innerHTML = "";
    for (var entrantNumber in data) {
        console.log(data[entrantNumber]);
        var newHtml =
            '<div style="background-color : lightblue; font-size:20px; font-weight:700; text-align:center; margin-bottom:30px"><div style="font-size:30px">' + data[entrantNumber].EntrantName + '</div><p>' + data[entrantNumber].Speciality + '</p>'//@using (Html.BeginForm("FullEntrantInformation", "Entrants", new {entrantId ='+ data[entrantNumber].EntrantId+'})){ <div><input type="submit" value="Watch" />'//<p>@Html.ActionLink("Show Info Bellow", "List", new {entrantId = item.EntrantId})</p></div> }</div > '
        entrantsList.innerHTML += newHtml;

        //$("#entrantsList").html(data.Entrants[0].Name);
    }
}