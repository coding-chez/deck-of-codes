const form = document.querySelector('form');
const table = document.querySelector('#user-info-table');

form.addEventListener('submit', (event) => {
  event.preventDefault();

  const firstName = document.querySelector('#fname').value;
  const lastName = document.querySelector('#lname').value;
  const dob = document.querySelector('#dob').value;
  const gender = document.querySelector('input[name="gender"]:checked');

  // this conditions will validate the form fields
  if (!firstName && !lastName && !dob && !gender) {
    alert('Please input all the fields.');
    return;
  } else if (!firstName) {
    alert('Please enter your first name.');
    return;
  } else if (!lastName) {
    alert('Please enter your last name.');
    return;
  } else if (!gender) {
    alert('Please select your gender.');
    return;
  } else if (!dob) {
    alert('Please select your date of birth.');
    return;
  }

  const newRow = document.createElement('tr');
  newRow.innerHTML = `
    <td>${firstName}</td>
    <td>${lastName}</td>
    <td>${gender.value}</td>
    <td>${dob}</td>
  `;

  // adds new row to table
  table.appendChild(newRow);

  form.reset();
});