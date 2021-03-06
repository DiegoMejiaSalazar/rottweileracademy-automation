Feature: Course information

  As a student
  I want to see the information of a course like the teacher name, price, and the amount of lessons
  so that I can know if the course is worth it

  Background: Access to student account
    Given I have accessed to the rottweiler academy page
    And I select the option Iniciar Sesión
    And I have put "diego.mejia@ucb.edu.bo" in the field of direccion de correo electrónico
    And I have put "Diego1.abc" in the field of Contraseña
    And I select the option "Acceder"
    And I should be able to see the name "diego"
    And I should be able to see my profile photo

  Scenario Outline: Access to a course
    Given I am in the course tab
    When I select the course "<course>"
    Then I should see the instructor "<instructor>"
    And I see in the sections part "<sections>"
    And I see the price of "<price>"
    Examples:
      | course                               | instructor             | sections    | price   |
      | Adobe illustrator                    | Sebastián              | 1 Lección   | Bs. 150 |
      | Como decorar con neón                | Sebastián              | 1 Lección   | Bs. 150 |
      | Como hacer milkshakes                | Sebastián              | 1 Lección   | Bs. 1   |
      | Curso básico de Robótica con Arduino | rottweilergroupbolivia | 4 Lecciones | Libre   |