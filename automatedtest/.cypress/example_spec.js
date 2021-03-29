describe('My First Test', () => {
  before(() => {
    cy.startScenario() // This would automatically go to the scenario being tested. Without this the test will fail.
  });

  it('finds the "Start Scenario" button', () => {
    cy.contains('Start Scenario');
  });

  it('can run a command', () => {
    cy.terminalType("uptime");

    cy.terminalShouldContain('load average');
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

  it('can run execute snippets based on name', () => {
    // TODO: The goToStep should be able to ignore being asked to move to the same step. At the moment this test depends on the above.
    // cy.goToStep(2);

    cy.get('code.execute.test-uname').click();

    cy.terminalShouldContain('Linux');
  });
})