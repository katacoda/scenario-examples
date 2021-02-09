describe('My First Test', () => {
  before(() => {
    cy.startScenario() // This would automatically go to the scenario being tested. Without this the test will fail.
  });

  it('finds the "Start Scenario" button', () => {
    cy.contains('Start Scenario');
  });

  it('can run a command', () => {
    cy.terminalType("uname");

    cy.terminalShouldContain('Linux');
  });

  it('can verify contents of a step', () => {
    cy.stepShouldBeVisible(1);

    cy.stepHasText("This is an example scenario that will be tested using the Cypress integration");
  });

  it('can go to the next step and verify contents', () => {
    cy.goToStep(2);

    cy.stepShouldBeVisible(2);

    cy.stepHasText('This will be the second step.');
  });
})