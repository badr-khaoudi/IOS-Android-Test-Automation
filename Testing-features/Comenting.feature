Feature: This is the Commenting feature

    Scenario: This is the content commenting scenario with text only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the comment button
        When User comments the content with text
        Then The content is commented

    Scenario: This is the content commenting scenario with image only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the comment button
        When User comments the content with an image
        Then The content is commented

    Scenario: This is the content commenting scenario with video only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the comment button
        When User comments the content with a video
        Then The content is commented

    Scenario: This is the content commenting scenario with document only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the comment button
        When User comments the content with a document
        Then The content is commented

    Scenario: This is the content commenting scenario with external link only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the comment button
        When User comments the content with external link
        Then The content is commented

    Scenario: This is the content commenting scenario with internal link only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the comment button
        When User comments the content with internal link
        Then The content is commented

    Scenario: This is the content commenting scenario with youtube video link only

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User clicks on the comment button
        When User comments the content with a youtube video link
        Then The content is commented