describe('Kubernetes Challenge', () => {
  before(() => {
    cy.startScenario() 
  });

  it('starts on Task 1', () => {
    cy.terminalShouldContain('Task 1');
    cy.terminalNotShouldContain('Task 2');
  });

  it('can complete challenge 1', () => {
    cy.viewport(2560, 1600)

    cy.terminalShouldContain('Task 1');

    cy.terminalNotShouldContain('Task 2');

    cy.terminalType('curl "node01:30080?cmd=env" > /root/app-env');

    cy.terminalShouldContain('Task 2');

  });

  it('can complete challenge 2', () => {
    cy.viewport(2560, 1600)

    cy.terminalShouldContain('Task 2');

    cy.terminalType('curl "node01:30080?cmd=cat%20app.js" > /root/app.js');

    cy.terminalShouldContain('Completed Challenge');

  });
})