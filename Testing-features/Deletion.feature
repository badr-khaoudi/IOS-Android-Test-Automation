Feature: This is a the Deletion feature

    Scenario: This is the content deletion of content scenario 

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the delete button
        Then The content is deleted

    Scenario: This is the content deletion of a comment scenario 

        Given Input Credentials
        Then User logs in
        When User selects a comment
        Then User clicks on the delete button
        Then The comment is deleted