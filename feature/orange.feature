Feature: Orange Basket
    As a farmer,
    I want to carry oranges in a basket,
    So that I will be able to carry large number of oranges easily,

Scenario Outline:  Add oranges to a basket
    Given the basket has <start> oranges
    When <more> oranges are added to the basket
    Then the basket contains <final> oranges

    Examples:    
        |start| more | final |
        | 4 | 5 | 9 |
        | 3 | 2 | 5 |
        | 2 | 2 | 4 | 

Scenario Outline: Remove oranges from a basket
    Given the basket has <start> oranges
    When <more> oranges are remove from the basket
    Then the basket contains <final> oranges

    Examples:
        | start | more | final |
        | 4 |  2| 2 |
        | 6 | 4 | 2 |
