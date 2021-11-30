describe('Complete Challenge with Solver', () => {
  const zenMoment=5000

  before(() => {
    cy.startScenario() 
  });

  it('click start button', () => {
    cy.get('button[id="hide-intro"]').click()
  });

  it('is terminal ready', () => {
    cy.wait(zenMoment)
    cy.terminalShouldContain('Challenge ready.');
  });

  it('are dependencies healthy', () => {
    cy.terminalType('uname -a');
    cy.terminalShouldContain('Linux',{timeout: 500});
    cy.terminalShouldContain('Ubuntu',{timeout: 500});

    cy.terminalType('uptime');
    cy.terminalShouldContain('1 user',{timeout: 500});
  });

  it('open solutions', () => {
    expect(Cypress.env('test')).to.equal('See this?')
    cy.log("Found for TEST=" + Cypress.env('test'))

    cy.terminalType('solver solutions --decrypt ' + Cypress.env('SOLVER_KEY'));
    cy.terminalShouldContain('Solutions now available');
  });

  it('solve all', () => {
    cy.terminalType('solver all');
    cy.terminalShouldContain('Verification passed for task 1');
  });

  it('solve step 1', () => {
    cy.terminalType('solver next');
    cy.terminalShouldContain('Verification passed for task 1');
  });

  it('solve step 2', () => {
    cy.terminalType('solver next');
    cy.terminalShouldContain('Verification passed for task 2');
  });

  it('solve step 3', () => {
    cy.terminalType('solver next');
    cy.terminalShouldContain('Verification passed for task 3');
  });

  it('solve step 4', () => {
    cy.terminalType('solver next');
    cy.terminalShouldContain('Verification passed for task 4');
  });

  it('is complete', () => {

    // TODO: Problem with IFrames barriers with Cypress - may need a helper function instructionsShouldContain
    // cy.contains('Congratulations, you have successfully completed this challenge');

    // TODO: Also, are there plans for the finish page to return

    cy.terminalType('solver status --quiet');
    cy.terminalShouldContain('0');
  });
})
