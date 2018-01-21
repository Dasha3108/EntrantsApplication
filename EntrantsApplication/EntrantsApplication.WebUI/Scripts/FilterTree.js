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

function successTree(data) {
    console.log(data);
    var entrantsList = document.getElementById("entrantsList");
    entrantsList.innerHTML = "";
    for (var entrantNumber in data) {
        console.log(data[entrantNumber]);
        var newHtml =
            '<div style="background-color : lightblue; font-size:20px; font-weight:700;\
            text-align:center; margin-bottom:30px; padding-bottom:2px; padding-top:2px"><div style="font-size:30px">'
            + data[entrantNumber].EntrantName + '</div><p>' + data[entrantNumber].EducationFee + '</p><p>'
            + data[entrantNumber].Speciality + '</p><form action="/Entrants/FullEntrantInformation?entrantId=' +
            data[entrantNumber].EntrantId + '" method="post"><div><input data-val="true"\
            data-val-number="Значением поля EntrantId должно быть число." data-val-required="Требуется поле EntrantId."\
            id="item_EntrantId" name="item.EntrantId" type="hidden" value="' + data[entrantNumber].EntrantId + '">\
            <input type="submit" value="Watch"><p></p></div></form>';
        entrantsList.innerHTML += newHtml;
    }
}