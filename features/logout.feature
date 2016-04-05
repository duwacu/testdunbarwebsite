Feature: logout of the session
  
  Background:
    Given I am logged in
    
Scenario: Correct Logging out
When I follow "Logout"
Then my session should end
And I should see a flash "Successfully logging out"
When I press "go back" browser's button    #is it a back button or a link?
Then I should not have a session      #replace this by session tests
And I should a message "Session timed out!"

Scenario: Try to access a specific address of some user's session with an URL  
When I copy the URL of any address of my session
And I follow "Logout"
Then my session should end
When I follow the address of a private session
Then I should not have a session
And I should see a message "Permission denied to access this page"


Scenario: Inactivity session timeout 
When I am inactive for more than 5 minutes
Then my session should end
And I should see message "The session has expired"
