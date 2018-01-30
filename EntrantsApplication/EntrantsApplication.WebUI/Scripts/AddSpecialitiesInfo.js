var currentNumber = 0;
var currentNumberOfGroupSpecialties;
var currentGroupSpecialities = new Array();
var changingSpecialityNumber;
var universityName;

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
            var specialityInfo;
            var element = document.getElementById("SpecialityId" + number);            
            console.log(element);
            var firstSpeciality = document.getElementById("SpecialityId0");
            console.log(firstSpeciality);
            if (firstSpeciality != null) {               
                specialityInfo = [getElementValue("UniversitiesDropDown", 0), number];
            }
            else if (element != null)
                if (element.name != "Speciality1Id")
                    specialityInfo = [getElementValue("UniversitiesDropDown", 0), number];
            if (specialityInfo == null) {
                specialityInfo = [getElementValue("UniversitiesDropDown", number)];
                currentGroupSpecialities = new Array();
                currentNumber = 0;
            }
            console.log(specialityInfo);
            console.log("curNafterCh");
            console.log(currentNumber);
            $(function () {
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(specialityInfo),
                    contentType: "application/json; charset=utf-8",
                    url: "/Entrants/GetEducationFormsInfo",
                    success: function (data) {
                        if (firstSpeciality == null) {
                            removeAllDivs(number);
                        }
                        else if (element != null)
                            if (element.name == "Speciality1Id")
                                removeAllDivs(number);
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
            var specialityInfo = [getElementValue("UniversitiesDropDown", number),
                getElementValue("EducationFormsDropDown", number)];
            console.log(specialityInfo);
            $(function () {
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(specialityInfo),
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
            var specialityInfo = [getElementValue("UniversitiesDropDown", number),
                getElementValue("EducationFormsDropDown", number), getElementValue("EducationPeriodsDropDown", number)];
            console.log(specialityInfo);
            $(function () {
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(specialityInfo),
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
            var specialityInfo = [getElementValue("UniversitiesDropDown", number),
                getElementValue("EducationFormsDropDown", number), getElementValue("EducationPeriodsDropDown", number),
                getElementValue("EducationFeesDropDown", number)];
            console.log(specialityInfo);
            $(function () {             
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(specialityInfo),
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
            //debugger;
                var currentElement = document.getElementById("SpecialitiesDropDown" + number);
                var specialityInfo;
                changingSpecialityNumber = number;
                var element = document.getElementById("SpecialityId" + number);
                var firstSpeciality = document.getElementById("SpecialityId0");
                console.log(number);
                if (firstSpeciality == null){
                    currentNumber = 0;
                    console.log(document.getElementById("UniversitiesDropDown0"));
                    specialityInfo = [getElementValue("UniversitiesDropDown", 0),
                        getElementValue("EducationFormsDropDown", 0), getElementValue("EducationPeriodsDropDown", 0),
                        getElementValue("EducationFeesDropDown", 0), getElementValue("SpecialitiesDropDown", 0)];
                    removeAllDivs(number);
                }
                else if (element != null)
                    if (element.name == "Speciality1Id") {
                        currentNumber = 0;
                        console.log(number);
                        specialityInfo = [getElementValue("UniversitiesDropDown", 0),
                            getElementValue("EducationFormsDropDown", 0), getElementValue("EducationPeriodsDropDown", 0),
                            getElementValue("EducationFeesDropDown", 0), getElementValue("SpecialitiesDropDown", 0)];
                        removeAllDivs(number);
                    }
                if (specialityInfo == null) {
                    specialityInfo = [getElementValue("UniversitiesDropDown", number),
                    getElementValue("EducationFormsDropDown", number), getElementValue("EducationPeriodsDropDown", number),
                    getElementValue("EducationFeesDropDown", number), getElementValue("SpecialitiesDropDown", number), number];
                }
                console.log("CurN " + number);
                console.log(specialityInfo);
                $(function () {
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        data: JSON.stringify(specialityInfo),
                        contentType: "application/json; charset=utf-8",
                        url: "/Entrants/GetGroupSpecialitiesInfo",
                        success: function (data) {
                            if (element == null || element.name == "Speciality1Id") {
                                currentNumberOfGroupSpecialties = data.length - 1;
                            }
                            currentGroupSpecialities = data;                           
                            console.log("CurrentGroupSp: ");
                            console.log(currentGroupSpecialities);
                            var element = document.getElementById("SpecialitiesDropDown" + number);
                         //   if (elementText == "Choose an option")
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
    addElementsToDropDown("UniversitiesDropDown" + number, data);
    if (number == 0 && universityName != undefined) {
        var index = jQuery('#UniversitiesDropDown0 option:contains("' + universityName + '")')[0].index;
        document.getElementById("UniversitiesDropDown0").selectedIndex = index;
    }
}

function onFormSuccess(data, number) {
    addElementsToDropDown("EducationFormsDropDown"+number, data);
}

function removeAllDivs(number) {
    var firstElement = document.getElementById(number);
    firstElement.id = "0";
   // debugger;
    if (number != 0) {
        var selects = firstElement.getElementsByTagName("select");
        console.log(selects);
        for (var counter = 0; counter < selects.length; counter++) {
            console.log(selects[counter]);
            selects[counter].id = selects[counter].id.replace(/[0-9]/g, '') + 0;
        }
        universityName = getElementValue("UniversitiesDropDown", 0);
        RemoveElementsFromDropDown("UniversitiesDropDown0");
        $(function () {
            $.ajax({
                type: "POST",
                dataType: "json",
                contentType: "application/json",
                url: "/Entrants/GetUniversitiesInfo",
                data: JSON.stringify([]),
                success: function (data) { onSuccess(data, 0) },
                error: function (d) {
                    console.log(d.responseText);
                    alert("Error calling the page method.");
                }
            });
        });
    }    
    console.log(document.getElementById("UniversitiesDropDown0"));
    console.log(firstElement);
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
    var lastChild = document.getElementById("SpecialitiesContainer").lastChild;
    console.log(lastChild.lastElementChild.lastElementChild.length);
    var specialityIdElement;
    if (lastChild.lastElementChild.lastElementChild.length >= 1) {
        console.log("curN " + currentNumber);
        console.log("total " + currentNumberOfGroupSpecialties);
        if (currentNumber >= 0) {
            var element = document.getElementById("HiddenElements");
            element.innerHTML += '<input data-val="true"id="SpecialityId' + currentNumber +
                '" name="Speciality' + (currentNumber + 1) + 'Id" type="hidden">';
        }
        console.log("SpecialityId" + currentNumber);
        specialityIdElement = document.getElementById("SpecialityId" + currentNumber);
        if (currentNumber < currentNumberOfGroupSpecialties && currentNumber < 30) {
            currentNumber++;
            AddNewSpeciality(currentNumber);
            AddInfo(currentNumber);
        }
    }
    else {
        console.log("ChangNum: " + changingSpecialityNumber);
        specialityIdElement = document.getElementById("SpecialityId" + changingSpecialityNumber);
    }
    console.log(currentGroupSpecialities[currentGroupSpecialities.length - 1].SpecialityId);
    specialityIdElement.value = currentGroupSpecialities[currentGroupSpecialities.length - 1].SpecialityId;
   // currentGroupSpecialities.splice(-1, 1);
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
    mainDiv.className = "speciality-div sortable";
    mainDiv.id = number;
    console.log(mainDiv.id);
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

function getElementValue(elementName, number) {   
    var element = document.getElementById(elementName + number);
    console.log(element.selectedIndex);
    console.log(element.options[element.selectedIndex])
    return element.options[element.selectedIndex].text;
}

function getRightPriority(array) {
    for (var number in array) {
        var specialityInfo = array[number].split(' = ');
        ChangeSpecialityPriority(specialityInfo)
    }   
}

function ChangeSpecialityPriority(specialityId) {
    var element = document.getElementById("SpecialityId" + specialityId[0]);
    if (element != null)
        element.name = "Speciality" + (+specialityId[1] + 1) + "Id";
}