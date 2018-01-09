function AddFaculties()
{
    var currentElement = document.getElementById("FacultyDropDown");
    while (currentElement.firstChild) {
        currentElement.removeChild(currentElement.firstChild);
    }
    var newOption = document.createElement("option");
    var newOptionText = document.createTextNode("Faculty");
    newOption.appendChild(newOptionText);
    currentElement.appendChild(newOption);
}