Feature: select product
as a user
I want to be able to see the product
so I can be on the main product page

Scenario: As a user I managed to select a product without logging in
Given I am on the main page in guest mode
When I clicked on the icon according to the image of the product I was looking for
Then I managed to get to the main product page

Scenario: As a user I can successfully view the product by logging in first
Given I logged in
When I clicked on the icon according to the image of the product I was looking for
Then I managed to get to the main product page

Scenario: As a user I failed to select a product because I did not click on the required product icon
Given I log in with guest or login mode
When I didnot click on the required product icon
Then I failed to be redirected to the main product page