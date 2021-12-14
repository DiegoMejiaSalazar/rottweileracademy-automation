Feature: Filter courses

  As a user(anonymus, student)
  I want to filter coourses
  So that I can find courses of my specific area or teacher that I am interested

  Scenario: Filter course given a logged in student
    When I select the option Iniciar Sesión
    And I have put "diego.mejia@ucb.edu.bo" in the field of direccion de correo electrónico
    And I have put "Diego1.abc" in the field of Contraseña
    And I select the option "Acceder"
    And I select the option Cursos
    And I select the option "Alfabético" of the course left filter
    And I select the option "Diseño" of the course middle filter
    And I select the option "rottweilergroupbolivia" of the course right filter
    Then I should be able to see the course "Curso completo de Photoshop desde Cero"
    And I see an amount of courses of 1
    But I should not be able to see the course "Word"

  Scenario: Filter course given an anonymus user
    When I select the option Cursos
    And I select the option "Recién creado" of the course left filter
    And I select the option "Cocina y repostería" of the course middle filter
    And I select the option "Sebastián" of the course right filter
    Then I should be able to see the course "Como hacer milkshakes"
    And I see an amount of courses of 1
    But I should not be able to see the course "Word"
    But I should not be able to see the course "Excel"
    But I should not be able to see the course "Hacer un estudio de grabación"
    But I should not be able to see the course "Curso básico de Robótica con Arduino"
    But I should not be able to see the course "Curso completo de Photoshop desde Cero"
    But I should not be able to see the course "Adobe illustrator"
    But I should not be able to see the course "Como decorar con neón"