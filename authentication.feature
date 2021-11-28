Feature: Student authentication
    Background: Access to rottweiler academy
        Given I have accessed to the rottweiler academy page
        When I select the option Iniciar Sesión
        Then I should see a form of login

      Scenario: Access using an existing account and using correct credentials
        Given I have put "diego.mejia@ucb.edu.bo" in the field of direccion de correo electrónico
        And I have put "Diego1.abc" in the field of Contraseña
        When I select the option Acceder
        Then I should be able to see the name "diego"
        And I should be able to see my profile photo

      Scenario: Access using an existing account and using incorrect credentials
        Given I have put "diego.mejia@ucb.edu.bo" in the field of direccion de correo electrónico
        And I have put "Diego1.abcd" in the field of Contraseña
        When I select the option Acceder
        Then I should be able to see an error message
        Then I should be able to see the email "diego.mejia@ucb.edu.bo" in the error message


      Scenario: Access using an unexisting account
        Given I have put "diego.mejia.salazar.doms@ucb.edu.bo" in the field of direccion de correo electrónico
        And I have put "Diego1.abcd" in the field of Contraseña
        When I select the option Acceder
        Then I should be able to see a message with "Dirección de correo electrónico desconocida"
