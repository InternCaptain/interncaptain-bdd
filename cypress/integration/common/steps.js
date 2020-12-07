import { Before, Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Before(() => {
    cy.visit('http://localhost:3000');
});

Given(`I am not logged in`, () => {
});

Given('this user is in the database:', (data) => {
    console.log(data);
});

Given('I am on {string} page', (page) => {
    console.log(page);
});

When('I enter {string} in the {string} input', (value, field) => {
    console.log(value, field);
});

When('I click on {string}', (button) => {
    console.log(button);
});

Then('I am logged in', () => {
    console.log('');
});

Then('I am redirected to {string} page', (page) => {
    console.log(page);
});

Then('I receive {string} validation message', (message) => {
    console.log(message);
});