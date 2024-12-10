function setUserName(element_id) {
    let element = document.getElementById(element_id);

    if (element !== null) {
        let name = prompt('What is your name?', 'user');

        // Check if the name is empty
        if (name !== null && name.trim() !== '') {
            element.innerHTML = `Welcome, ${name}!`;
        } else {
            console.log('User input empty name.');
        }
    } else {
        console.log(`Element ID: ${element_id} not found`);
    }
}

function setStyles(){
    let style_element = document.getElementById("style_js");
    style_element.style.color = "#4d2673";
    style_element.style.fontSize = "30px";
}
