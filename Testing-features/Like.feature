Feature: This is a the like action feature

    Scenario: This is the like scenario a content not already liked

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User presses the like button

    Scenario: This is the like scenario a content that has been already liked

        Given Input Credentials
        Then User logs in
        When User selects a content
        Then User presses the unlike button


    Scenario: This is the like scenario a commentaire not already liked

        Given Input Credentials
        Then User logs in
        When User selects a commentaire
        Then User presses the like button

    Scenario: This is the like scenario a commentaire not already liked

        Given Input Credentials
        Then User logs in
        When User selects a commentaire
        Then User presses the unlike button