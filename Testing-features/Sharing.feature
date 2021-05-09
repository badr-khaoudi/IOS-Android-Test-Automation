Feature: This is the Sharing feature

    Scenario: This is the content sharing the scenario with text only

        Given Input Credentials
        Then User logs in
        When User selects a content with text only
        Then User clicks on the share button
        Then The content is shared

    Scenario: This is the content sharing the scenario with image only

        Given Input Credentials
        Then User logs in
        When User selects a content with image only
        Then User clicks on the share button
        Then The content is shared

    Scenario: This is the content sharing the scenario with video only

        Given Input Credentials
        Then User logs in
        When User selects a content with video only
        Then User clicks on the share button
        Then The content is shared

    Scenario: This is the content commenting scenario with document only

        Given Input Credentials
        Then User logs in
        When User selects a content with document only
        Then User clicks on the share button
        Then The content is shared

    Scenario: This is the content sharing the scenario with external link only

        Given Input Credentials
        Then User logs in
        When User selects a content with external link only
        Then User clicks on the share button
        Then The content is shared

    Scenario: This is the content sharing the scenario with internal link only

        Given Input Credentials
        Then User logs in
        When User selects a content with internal link only
        Then User clicks on the share button
        Then The content is shared

    Scenario: This is the content sharing the scenario with youtube video link only

        Given Input Credentials
        Then User logs in
        When User selects a content with youtube video link only
        Then User clicks on the share button
        Then The content is shared