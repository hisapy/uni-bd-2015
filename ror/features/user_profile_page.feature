@javascript
Feature: User Profile page

	As an User 
	I want to have a profile page
	So other users or visitors can find info about me

	Scenario Outline: Profile pages

		Given an existing User with
			| first_name 		| last_name 	| username 		|
			| <first_name>	|	<last_name 	| <username>	|
		When I visit "/<username>"
		Then I should see <first_name>'s profile page
		
		Examples:
			| first_name 	| last_name | username |
			| Hisa				|	Ishibashi | hisa		 | 



