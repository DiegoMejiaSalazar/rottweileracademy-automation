Feature: Buy courses
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
      | course                | message                                             |
      | Adobe illustrator     | “Adobe illustrator” se ha añadido a tu carrito.     |
      | Excel                 | “Excel” se ha añadido a tu carrito.                 |
      | Como hacer milkshakes | “Como hacer milkshakes” se ha añadido a tu carrito. |
      | Word                  | “Word” se ha añadido a tu carrito.                  |

  Scenario Outline: Add two times the same course to the shopping cart
    When I select the course "<course>"
    And I select the option Apuntarme
    And I should see the option "Añadir al carrito"
    And I click on Añadir al carrito
    Then I should see the option "<message>"
    Examples:
      | course                | message                                                     |
      | Como hacer milkshakes | No puedes añadir otro «Como hacer milkshakes» a tu carrito. |

  Scenario Outline: Get the total amount of the coures added to the cart
    When I select the course "<course>"
    And I select the option Apuntarme
    And I should see the option "Añadir al carrito"
    And I click on Añadir al carrito
    Then I should see the option "<message>"
    Examples:
      | course                | message                                                     |
      | Como hacer milkshakes | No puedes añadir otro «Como hacer milkshakes» a tu carrito. |