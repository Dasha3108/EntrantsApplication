var currentNumber = 0;
var currentNumberOfGroupSpecialties;
var currentGroupSpecialities = new Array();

function AddInfo(number) {
    $(function () {
        $.ajax({
            type: "POST",
            dataType: "json",
            contentType: "application/json",
            url: "/Entrants/GetUniversitiesInfo",
            data: JSON.stringify(currentGroupSpecialities),
            success: function (data) { onSuccess(data, number) },
            error: function (d) {
                console.log(d.responseText);
                alert("Error calling the page method.");
            }
        });
    });
    getEducationForms(number);
}

function getEducationForms(number) {   
    $(document).ready(function () {
        $("#UniversitiesDropDown" + number).change(function () {
            RemoveElementsFromDropDown("EducationFormsDropDown" + number);
            RemoveElementsFromDropDown("EducationPeriodsDropDown" + number);
            RemoveElementsFromDropDown("EducationFeesDropDown" + number);
            RemoveElementsFromDropDown("SpecialitiesDropDown" + number);
            var currentElement = document.getElementById("UniversitiesDropDown" + number);  
            var a;
            if (number != 0)
                a = [currentElement.options[currentElement.selectedIndex].text, number];
            else {
                a = [currentElement.options[currentElement.selectedIndex].text];
                currentGroupSpecialities = new Array();
                currentNumber = 0;
            }
            console.log(a);
            console.log("curNafterCh");
            console.log(currentNumber);
            $(function () {
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(a),
                    contentType: "application/json; charset=utf-8",
                    url: "/Entrants/GetEducationFormsInfo",
                    success: function (data) {
                        if (number == 0) 
                            removeAllDivs();
                        if (data.length != 0)
                            onFormSuccess(data, number)
                    },
                    error: function (d) {
                        console.log(d.responseText);
                        alert("Error calling the page method.");
                    }
                });
            });
        });
    });
    getEducationPeriods(number);
}

function getEducationPeriods(number) {
    $(document).ready(function () {
        $("#EducationFormsDropDown" + number).change(function () {
            RemoveElementsFromDropDown("EducationPeriodsDropDown" + number);
            RemoveElementsFromDropDown("EducationFeesDropDown" + number);
            RemoveElementsFromDropDown("SpecialitiesDropDown" + number);
            var currentElement = document.getElementById("EducationFormsDropDown" + number);
            var a = [currentElement.options[currentElement.selectedIndex].text];
            console.log(a);
            $(function () {
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(a),
                    contentType: "application/json; charset=utf-8",
                    url: "/Entrants/GetEducationPeriodsInfo",
                    success: function (data) {
                        if (data.length != 0)
                            onPeriodSuccess(data, number)
                    },
                    error: function (d) {
                        console.log(d.responseText);
                        alert("Error calling the page method.");
                    }
                });
            });
        });
    });
    getEducationFees(number);
}

function getEducationFees(number) {
    $(document).ready(function () {
        $("#EducationPeriodsDropDown" + number).change(function () {
            RemoveElementsFromDropDown("EducationFeesDropDown" + number);
            RemoveElementsFromDropDown("SpecialitiesDropDown" + number);
            var currentElement = document.getElementById("EducationPeriodsDropDown" + number);
            var a = [currentElement.options[currentElement.selectedIndex].text];
            console.log(a);
            $(function () {
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(a),
                    contentType: "application/json; charset=utf-8",
                    url: "/Entrants/GetEducationFeesInfo",
                    success: function (data) {
                        if (data.length != 0)
                            onFeeSuccess(data, number)
                    },
                    error: function (d) {
                        console.log(d.responseText);
                        alert("Error calling the page method.");
                    }
                });
            });
        });
    });
    getSpecialities(number);
}

function getSpecialities(number) {
    $(document).ready(function () {
        $("#EducationFeesDropDown" + number).change(function () {
            RemoveElementsFromDropDown("SpecialitiesDropDown" + number);
            var currentElement = document.getElementById("EducationFeesDropDown" + number);
            var a = [currentElement.options[currentElement.selectedIndex].text];
            console.log(a);
            $(function () {             
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(a),
                    contentType: "application/json; charset=utf-8",
                    url: "/Entrants/GetSpecialitiesInfo",
                    success: function (data) {
                        if (data.length != 0)
                            onSpecialitySuccess(data, number)
                    },
                    error: function (d) {
                        console.log(d.responseText);
                        alert("Error calling the page method.");
                    }
                });
            });
        });
    });
    getOtherSpecialities(number);
}

function getOtherSpecialities(number) {
        $(document).ready(function () {
            $("#SpecialitiesDropDown" + number).change(function () {
                var currentElement = document.getElementById("SpecialitiesDropDown" + number);
                var a;
                if (number == 0) {
                    removeAllDivs();
                    currentNumber = 0;
                    a = [currentElement.options[currentElement.selectedIndex].text];
                }
                else {
                    a = [currentElement.options[currentElement.selectedIndex].text, number];
                }
                console.log(a);
                $(function () {
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        data: JSON.stringify(a),
                        contentType: "application/json; charset=utf-8",
                        url: "/Entrants/GetGroupSpecialitiesInfo",
                        success: function (data) {
                            if (number == 0) {
                                currentNumberOfGroupSpecialties = data.length - 1;
                            }
                            currentGroupSpecialities = data;                           
                            console.log("CurrentGroupSp: ");
                            console.log(currentGroupSpecialities);
                            onOtherSpecialitiesSuccess();
                        },
                        error: function (d) {
                            console.log(d.responseText);
                            alert("Error calling the page method.");
                        }
                    });
                });
            });
        });           
}

function onSuccess(data, number) {
    addElementsToDropDown("UniversitiesDropDown"+number, data);
}

function onFormSuccess(data, number) {
    addElementsToDropDown("EducationFormsDropDown"+number, data);
}

function removeAllDivs() {
    var firstElement = document.getElementById("FirstSpecialityInfo");
    var currentElement = document.getElementById("SpecialitiesContainer");
    currentElement.innerHTML = "";
    currentElement.appendChild(firstElement);
    var hiddenElements = document.getElementById("HiddenElements");
    hiddenElements.innerHTML = "";
}

function onPeriodSuccess(data, number) {
    console.log(data);
    addElementsToDropDown("EducationPeriodsDropDown"+number, data);
}

function onFeeSuccess(data, number) {
    console.log(data);
    addElementsToDropDown("EducationFeesDropDown"+number, data);
}

function onSpecialitySuccess(data, number) {
    console.log(data.length);
    addElementsToDropDown("SpecialitiesDropDown" + number, data);
    console.log(number);
}

function onOtherSpecialitiesSuccess() {
    console.log("curN " + currentNumber);
    console.log("total " + currentNumberOfGroupSpecialties);
    if (currentNumber >= 0) {
        var element = document.getElementById("HiddenElements");
        element.innerHTML += '<input data-val="true" data-val-number="Значением поля Speciality' + (currentNumber + 1) + 'Id\
         должно быть число." data-val-required="Требуется поле Speciality'+ (currentNumber + 1) + 'Id." id="SpecialityId' + currentNumber +
        '" name="Speciality' + (currentNumber+1)+'Id" type="hidden" value="">';
    }
    var element = document.getElementById("SpecialityId" + currentNumber);
    console.log("SpecialityId" + currentNumber);
    console.log(currentGroupSpecialities[currentGroupSpecialities.length - 1].SpecialityId);
    element.value = currentGroupSpecialities[currentGroupSpecialities.length - 1].SpecialityId;
    currentGroupSpecialities.splice(-1, 1);
    if (currentNumber < currentNumberOfGroupSpecialties && currentNumber < 30) {
        currentNumber++;
        AddNewSpeciality(currentNumber);
        AddInfo(currentNumber);
    }
}

function addElementsToDropDown(dropDownName, data) {
    var currentElement = document.getElementById(dropDownName);
    currentElement.innerHTML = "<option>Choose an option</option>";
    for (var elementNumber in data) {
        var newOption = document.createElement("option");
        var newOptionText = document.createTextNode(data[elementNumber]);
        newOption.appendChild(newOptionText);
        currentElement.appendChild(newOption);
    }
}

function AddNewSpeciality(number) {
    var firstDiv = document.createElement("div");
    var univerSelect = document.createElement("select");
    univerSelect.style.marginTop = "10px";
    univerSelect.style.width = "100%";
    univerSelect.setAttribute("id", "UniversitiesDropDown" + number);
    firstDiv.appendChild(univerSelect);

    var secondDiv = document.createElement("div");
    secondDiv.style.display = "flex";
    secondDiv.style.justifyContent = "space-between";
    var formSelect = document.createElement("select");
    formSelect.style.width = "33%";
    formSelect.setAttribute("id", "EducationFormsDropDown" + number);
    secondDiv.appendChild(formSelect);
    var periodSelect = document.createElement("select");
    periodSelect.style.width = "33%";
    periodSelect.setAttribute("id", "EducationPeriodsDropDown" + number);
    secondDiv.appendChild(periodSelect);
    var feeSelect = document.createElement("select");
    feeSelect.style.width = "33%";
    feeSelect.setAttribute("id", "EducationFeesDropDown" + number);
    secondDiv.appendChild(feeSelect);

    var thirdDiv = document.createElement("div");
    var specialitySelect = document.createElement("select");
    specialitySelect.style.marginBottom = "10px";
    specialitySelect.style.width = "100%";
    specialitySelect.setAttribute("id", "SpecialitiesDropDown" + number);
    thirdDiv.appendChild(specialitySelect);

    var mainDiv = document.createElement("div");
    mainDiv.className = "speciality-div";
    mainDiv.appendChild(firstDiv);
    mainDiv.appendChild(secondDiv);
    mainDiv.appendChild(thirdDiv);

    var element = document.getElementById("SpecialitiesContainer");
    element.appendChild(mainDiv);
}

function RemoveElementsFromDropDown(dropDownName) {
    var dropDown = document.getElementById(dropDownName);
    while (dropDown.firstChild) {
        dropDown.removeChild(dropDown.firstChild);
    }
}