Feature: Find course
  As a student
  I want to find a curse by it's name or description
  So that I don't waste time finding courses of my interest

  Background:
    Given I am in the course tab

 Scenario Outline: Find a course a word
      When I type "<course>" in the field Buscar cursos
      Then I should be able to see the course "<expected_course>"
      Examples:
        | course            | expected_course                      |
        | Adobe illustrator | Adobe illustrator                    |
        | Adobe             | Adobe illustrator                    |
        | ADOBE             | Adobe illustrator                    |
        | adobe             | Adobe illustrator                    |
        | **                | Lo siento, no se encontraron cursos. |
        | Como usar Word    | Word                                 |
