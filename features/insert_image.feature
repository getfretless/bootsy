Feature: Insert an image
  In order to illustrate my text
  As a writer using Bootsy
  I want to insert images on it

  Background:
    Given I am on the new post page
    And I access its image gallery
    And I upload the image "test.jpg"

  Scenario Outline: insert an image with a specific size
    When I click on the image "test.jpg"
    And I click on the "<Position>" option of the "<Size>" submenu
    Then I see the image "test.jpg" in its <Size> size positioned as <Position>
    Examples:
      | Size     | Position |
      | Small    | Left     |
      | Small    | Right    |
      | Small    | Inline   |
      | Medium   | Left     |
      | Medium   | Right    |
      | Medium   | Inline   |
      | Large    | Left     |
      | Large    | Right    |
      | Large    | Inline   |
      | Original | Left     |
      | Original | Right    |
      | Original | Inline   |
