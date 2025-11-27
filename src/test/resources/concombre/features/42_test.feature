Feature: Stock Management To Check Tag Inheritance

  Background:
    Given I've 2 products
    And I add 3 additional products

    Scenario Outline: New products with tag inheritance
      Given I need to add some <product>
      And I know how much I have
      When I add it to the stock
      Then I should have more than the minimum needed

      @v7
      Examples:
      | product |
      | "Ladder" |
      | "Chest" |
      
      @v8
      Examples:
      | product |
      | "Table" |