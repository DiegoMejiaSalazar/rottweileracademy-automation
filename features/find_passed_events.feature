Feature: Find passed events

  As a student
  I want to be able to search for events
  to be able to see courses of my interest that are opening on certain dates.

  Background:
    Given I select the option "Eventos"

  Scenario: Find all passed events
    When I click on Eventos anteriores
    Then I should be able to see the course "CURSO ONLINE: PRESUPUESTO EMPRESARIAL" in the events result
