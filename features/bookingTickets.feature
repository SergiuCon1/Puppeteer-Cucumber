Feature: Booking tickets
    Scenario: Booking one ticket - positive case
        Given user is on "http://qamid.tmweb.ru/client/index.php" page
        When user clicks day of week 2
        When user clicks on the movie with id "129"
        When user clicks on a free slots 1
        When user clicks acception button
        And user clicks acception button
        Then user gets QR code
    Scenario: Booking several tickets - positive case
        Given user is on "http://qamid.tmweb.ru/client/index.php" page
        When user clicks day of week 2
        When user clicks on the movie with id "129"
        When user clicks on a free slots 5
        When user clicks acception button
        And user clicks acception button
        Then user gets QR code
    Scenario: Booking several tickets - positive case
        Given user is on "http://qamid.tmweb.ru/client/index.php" page
        When user clicks day of week 2
        When user clicks on the movie with id "129"
        Then user gets disabled button