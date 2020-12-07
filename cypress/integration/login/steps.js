import { Given, When, Then, And } from 'cypress-cucumber-preprocessor/steps';

Given('I am not logged in', () => {

});

Given('this user is in the database', (data) => {

});

Given('I am on {string} page', (page) => {
    cy.visit('http://localhost:3000')
});

When('I enter {string} in the {string} input', (input, field) => {
    
});

When('I click on {string}', (button) => {

});

Then('I am logged in', () => {

});

Then('I am redirected to {string} page', (page) => {

});


Then('I receive {string} validation message', (message) => {

});