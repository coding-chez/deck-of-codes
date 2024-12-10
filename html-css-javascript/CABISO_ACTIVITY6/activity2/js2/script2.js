const radiusInput = document.getElementById("radius");
const areaOutput = document.getElementById("area");
const circumferenceOutput = document.getElementById("circumference");
const calculateButton = document.getElementById("calculate");

calculateButton.addEventListener("click", () => {
    const radius = parseFloat(radiusInput.value);
    
    if (isNaN(radius) || radius <= 0) {
        // Display error message
        alert("Please enter a valid number for the radius.");
        areaOutput.textContent = "";
        circumferenceOutput.textContent = "";
        return;
    }
    
    const area = Math.PI * radius * radius;
    const circumference = 2 * Math.PI * radius;

    areaOutput.textContent = area.toFixed(2);
    circumferenceOutput.textContent = circumference.toFixed(2);
});
