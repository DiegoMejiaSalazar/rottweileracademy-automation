Feature: Find passed events

  Como estudiante
  quiero poder buscar eventos
  para poder ver cursos de mi interes que se van a inagurar en determinadas fechas

  Background:
    Given I select the option "Eventos"

  Scenario: Find all passed events
    When I click on Eventos anteriores
    Then I should be able to see the course "CURSO ONLINE: PRESUPUESTO EMPRESARIAL" in the events result
