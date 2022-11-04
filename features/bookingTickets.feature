Feature: Booking tickets
    Scenario: Booking one ticket - positive case
        Given user is on "http://qamid.tmweb.ru/client/index.php" page
        When user clicks on the button "dayOfWeek"
        When user clicks on the button "timeMovie"
        When user clicks on the button "freeSlots"
        When user clicks on the button "acceptButton"
        When user clicks on the button "acceptButton"
        Then user gets "QR code"
    Scenario: Booking several tickets - positive case
        Given user is on "http://qamid.tmweb.ru/client/index.php" page
        When user clicks on the button "dayOfWeek"
        When user clicks on the button "timeMovie"
        When user clicks on the button "severalFreeSlots"
        When user clicks on the button "acceptButton"
        When user clicks on the button "acceptButton"
        Then user gets "QR code"
    Scenario: Booking several tickets - positive case
        Given user is on "http://qamid.tmweb.ru/client/index.php" page
        When user clicks on the button "dayOfWeek"
        When user clicks on the button "timeMovie"
        When user clicks on the button "acceptButton"
        Then user gets "disabledButton"