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
            }).on("check_node.jstree", function (e, data) {
                alert("dsef");
                alert(data.node.text + (data.node.state.checked ? ' CHECKED' : ' NOT CHECKED'))
            })
        });
    });
}