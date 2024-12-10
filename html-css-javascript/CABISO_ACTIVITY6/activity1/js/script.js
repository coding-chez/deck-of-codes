const checkbox = document.getElementById('mode-checkbox');
const body = document.body;
const modeText = document.getElementById('mode-text');

checkbox.addEventListener('change', () => {
    body.classList.toggle('dark-mode');

    if (body.classList.contains('dark-mode')) {
        modeText.textContent = 'Dark Mode';
    } else {
        modeText.textContent = 'Light Mode';
    }
});

function updateModeText() {
    if (body.classList.contains('dark-mode')) {
        modeText.textContent = 'Dark Mode';
    } else {
        modeText.textContent = 'Light Mode';
    }
}
updateModeText(); 
