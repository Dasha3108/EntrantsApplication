function AddSpecialities()
{
    var selectedEducationFeeFaculties;

    $(document).ready(function () {
        $("#EducationFeeDropDown").change(function (event) {
            $.getJSON(
                '/jsonData/Faculties.json',
                function (myObject) {
                    console.log(myObject);
                    var facultyDropDown = document.getElementById("FacultyDropDown");
                    while (facultyDropDown.firstChild) {
                        facultyDropDown.removeChild(facultyDropDown.firstChild);
                    }
                    facultyDropDown.innerHTML = "<option>Choose an option</option>";
                    var specialitytyDropDown = document.getElementById("SpecialityDropDown");
                    while (specialitytyDropDown.firstChild) {
                        specialitytyDropDown.removeChild(specialitytyDropDown.firstChild);
                    }
                    specialitytyDropDown.innerHTML = "<option>Choose an option</option>";
                    var currentElement = document.getElementById("EducationFeeDropDown");
                    for (var elementNumber in myObject) {
                        var educationFeeName = myObject[elementNumber].text;
                        if (currentElement.options[currentElement.selectedIndex].text == educationFeeName) {
                            for (var facultyNumber in myObject[elementNumber].children) {
                                var newOption = document.createElement("option");
                                var newOptionText = document.createTextNode(myObject[elementNumber].
                                    children[facultyNumber].text);
                                newOption.appendChild(newOptionText);
                                facultyDropDown.appendChild(newOption);
                            }
                            selectedEducationFeeFaculties = myObject[elementNumber].children;
                            break;
                        }
                    }
                });
        });
    });

    $(document).ready(function () {
        $("#FacultyDropDown").change(function (event) {
            $.getJSON(
                '/jsonData/Faculties.json',
                function (myObject) {
                    console.log(myObject);
                    var specialitytyDropDown = document.getElementById("SpecialityDropDown");
                    while (specialitytyDropDown.firstChild) {
                        specialitytyDropDown.removeChild(specialitytyDropDown.firstChild);
                    }
                    specialitytyDropDown.innerHTML = "<option>Choose an option</option>";
                    var currentElement = document.getElementById("FacultyDropDown");
                    for (var elementNumber in selectedEducationFeeFaculties) {
                        var facultyName = selectedEducationFeeFaculties[elementNumber].text;
                        console.log(selectedEducationFeeFaculties[elementNumber].text);
                        if (currentElement.options[currentElement.selectedIndex].text == facultyName) {
                            for (var specialityNumber in selectedEducationFeeFaculties[elementNumber].children) {
                                var newOption = document.createElement("option");
                                var newOptionText = document.createTextNode(selectedEducationFeeFaculties[elementNumber].
                                    children[specialityNumber].text);
                                newOption.appendChild(newOptionText);
                                specialitytyDropDown.appendChild(newOption);
                            }
                            break;
                        }
                    }
                });
        });
    });
}

function AddEducationFee() {
    $(document).ready(function () {
        $.getJSON(
            '/jsonData/Faculties.json',
            function (myObject) {
                console.log(myObject);
                var currentElement = document.getElementById("EducationFeeDropDown");
                currentElement.innerHTML = "<option>Choose an option</option>";
                for (var elementNumber in myObject) {
                    console.log(elementNumber);
                    console.log(myObject[elementNumber]);
                    var newOption = document.createElement("option");
                    var newOptionText = document.createTextNode(myObject[elementNumber].text);
                    newOption.appendChild(newOptionText);
                    currentElement.appendChild(newOption);
                }
            });
    });
}

function showMotherInfo() {
    var motherDropDown = document.getElementById("motherDropDown");
    if (motherDropDown.options[motherDropDown.selectedIndex].text == "Have got") {
        document.getElementById("motherInfo").style.display = "block";
    }
    else {
        document.getElementById("motherInfo").style.display = "none";
    }
}

function showFatherInfo() {
    var fatherDropDown = document.getElementById("fatherDropDown");
    if (fatherDropDown.options[fatherDropDown.selectedIndex].text == "Have got") {
        document.getElementById("fatherInfo").style.display = "block";
    }
    else {
        document.getElementById("fatherInfo").style.display = "none";
    }
}

function showPrivelegesDefenition() {
    var dropDown = document.getElementById("privilegesDropDown");
    if (dropDown.options[dropDown.selectedIndex].text == "Yes") {
        document.getElementById("privilegesDefenition").style.display = "block";
    }
    else {
        document.getElementById("privilegesDefenition").style.display = "none";
    }
}