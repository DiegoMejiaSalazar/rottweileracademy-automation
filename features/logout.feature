Feature: Course information
  Como estudiante
  quiero poder cerrar sesión
  para evitar que terceras personas cambien mi informacion personal o realizen actividades indevidas con mi perfil

  Scenario: Logout given a user that logged in
    Given I have accessed to the rottweiler academy page
    When I select the option Iniciar Sesión
    And I have put "diego.mejia@ucb.edu.bo" in the field of direccion de correo electrónico
    And I have put "Diego1.abc" in the field of Contraseña
    And I select the option "Acceder"
    And I click on the name "diego"
    And I click on "Cierre de sesión"
    Then I should be able to see the rottweiler page