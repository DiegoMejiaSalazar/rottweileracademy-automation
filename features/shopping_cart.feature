Feature: Buy courses

  As a student
  I want to be able to buy courses
  to be able to learn new things

  Background:
    Given I select the option Iniciar Sesión
    And I have put "rottweilerusuariodemo@gmail.com" in the field of direccion de correo electrónico
    And I have put "Diego1.abc" in the field of Contraseña
    And I select the option "Acceder"
    And I select the option Cursos

  Scenario Outline: Add course to shopping cart
    When I select the course "<course>"
    And I select the option Apuntarme
    And I should see the option "Añadir al carrito"
    And I click on Añadir al carrito
    Then I should see the option "<message>"
    Examples:
      | course                                 | message                                                              |
      | Adobe illustrator                      | “Adobe illustrator” se ha añadido a tu carrito.                      |
      | Excel                                  | “Excel” se ha añadido a tu carrito.                                  |
      | Como hacer milkshakes                  | “Como hacer milkshakes” se ha añadido a tu carrito.                  |
      | Word                                   | “Word” se ha añadido a tu carrito.                                   |
      | Curso completo de Photoshop desde Cero | “Curso completo de Photoshop desde Cero” se ha añadido a tu carrito. |

  Scenario Outline: Add two times the same course to the shopping cart
    When I select the course "<course>"
    And I select the option Apuntarme
    And I should see the option "Añadir al carrito"
    And I click on Añadir al carrito
    Then I should see the option "<message>"
    Examples:
      | course                | message                                                     |
      | Como hacer milkshakes | No puedes añadir otro «Como hacer milkshakes» a tu carrito. |

  Scenario: Get the total amount of the coures added to the cart
    When I access the shopping cart icon
    And I click on "Ver carrito"
    Then I should see a total amount to pay of "51.00Bs."

  Scenario: Remove element from the shopping cart
    When I access the shopping cart icon
    And I click on "Ver carrito"
    And I remove the element "Como hacer milkshakes" of the shopping cart
    Then I should see a total amount to pay of "50.00Bs."