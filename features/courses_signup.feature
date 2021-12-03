Feature: Mark course as completed

  Como estudiante
  quiero marcar un curso como completado
  para tener un seguimiento de mi aprendizaje
  # SE DESCONTINUO DEBIDO A ALGUNAS DEFICIENCIAS QUE TIENE EL SERVICDOR DE EMAILS LO QUE GENERABA QUE ESTE TEST TOME
  # LARGOS PERIODOS DE TIEMPO
#  Scenario: Registering a new student
#    Given I am in the Register form
#    When I have put "rottweilerusuariodemo@gmail.com" as my new student account email
#    And I have put "Diego1.abc" as my new student account password
#    And I have put "Diego1.abc" for confirming my new student account password
#    And I have put "Diego" as my new student account name
#    And I have put "Mejia" as my new student account lastname
#    And I have put "Diegodoms123" as my student account username
#    And I select the option Crear una cuenta
#    And I am in my gmail page
#    And I select the option Inicia sesión
#    And I have put "rottweilerusuariodemo@gmail.com" as my email
#    And I select the option Siguiente of the gmail form
#    And I have put "Rottweiler123." as my password
#    And I select the option Siguiente of the gmail form
#    And I select the email of Wordpress
#    And I select the confirmation link
#    And I select the option Activar
#    And I click on Entra en el sistema
#    Then The message "Cuenta activada" should be displayed in the activation form


  Background:
    Given I select the option Iniciar Sesión
    And I have put "rottweilerusuariodemo@gmail.com" in the field of direccion de correo electrónico
    And I have put "Diego1.abc" in the field of Contraseña
    And I select the option "Acceder"
    And I select the option Cursos

  Scenario: Sign up for a course
    When I select the course "Curso básico de Robótica con Arduino"
    And I select the option Apuntarme
    And I click on "Mis Cursos"
    Then I should be able to see the course "Curso básico de Robótica con Arduino"

  Scenario: Complete a course
    When I select the course "Curso básico de Robótica con Arduino"
    And I click on "Inicio Curso"
    And I selecct the option Marcar como completado
    And I click on "Primer programa e instalación de IDE" of the lessons
    And I selecct the option Marcar como completado
    And I click on "Entradas y salidas Digitales" of the lessons
    And I selecct the option Marcar como completado
    And I click on "PWM con LED" of the lessons
    And I selecct the option Marcar como completado
    Then I should see the option "Completado"

