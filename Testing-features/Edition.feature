Feature: This is the Edition feature

    Scenario: This is the content edition scenario with text only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the edition button
        When User updated the content text
        Then The content is edited

    Scenario: This is the content edition scenario with image only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the edition button
        When User updated the content image
        Then The content is edited

    Scenario: This is the content edition scenario with video only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the edition button
        When User updated the content video
        Then The content is edited

    Scenario: This is the content edition scenario with document only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the edition button
        When User updated the content document
        Then The content is edited

    Scenario: This is the content edition scenario with external link only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the edition button
        When User updated the content external link
        Then The content is edited

    Scenario: This is the content edition scenario with internal link only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the edition button
        When User updated the content internal link
        Then The content is edited

    Scenario: This is the content edition scenario with youtube video link only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the edition button
        When User updated the content youtube video link
        Then The content is edited