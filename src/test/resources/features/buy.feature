Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given สินค้า "Bread" with price 20.00 exists
    And  สินค้า "Jam" with price 80.00 exists
    And  สินค้า "Butter" with price 60.00 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 40.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 120.00

Scenario: Buy three products
    When I buy "Bread" with quantity 1
    And I buy "Jam" with quantity 1
    And I buy "Butter" with quantity 2
    Then total should be 220.00


