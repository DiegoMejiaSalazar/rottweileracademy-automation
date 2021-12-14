Feature: Find events

  As a user(anonymus, student)
  I want to find events
  So that I can find future courses or events that will happen in a point of time

  Background:
    Given I select the option "Eventos"

 Scenario Outline: Find an event using an specific date
    When I select the date "<date>"
    And I select the option "<option>" of the filter option of events
    Then I should be able to see the course "<expected_event>"
    Examples:
      | date       | option | expected_event                        |
      | 11/25/2020 | Lista  | CURSO ONLINE: PRESUPUESTO EMPRESARIAL |
      | 11/25/2020 | Mes    | CURSO ONLINE: PRESUPUESTO EMPRESARIAL |
      | 11/25/2020 | Semana | CURSO ONLINE: PRESUPUESTO EMPRESARIAL |
      | 11/25/2020 | Dia    | CURSO ONLINE: PRESUPUESTO EMPRESARIAL |