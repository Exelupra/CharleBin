describe('template spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:8080/');
    cy.get("#message").type("awesome-password");
    cy.get("#passwordinput").type("awesome-password");
    cy.get('#sendbutton').click();
    cy.url().should('include', 'http://localhost:8080/?');
    cy.get('#pasteurl').click();
cy.get("#passworddecrypt").type("awesome-password");
cy.get("button.btn.btn-success.btn-block").click();
  })
})