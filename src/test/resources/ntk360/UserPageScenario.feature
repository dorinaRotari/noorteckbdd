Feature: User Page Feature

  Background: 
    Given User is logged in and in NTK Dashboard page

  Scenario Outline: Verify employee username
    When User navigates to Users page
    Then User verifies employee data "<EmployeeName>","<Username>"

    Examples: 
      | EmployeeName    | Username        |
      | Aaliyah Haq     | Aaliyah.haq     |
      | Alice Duval     | Alice           |
      | Brody Alan      | Brody           |
      | Cecil Bonaparte | Cecil.bonaparte |
      | David Cole      | David.cole      |

  #Exercise 5   Datatables
  Scenario: Verify employee username
    When User navigates to Users page
    Then User verifies employee data
      | EmployeeName    | Username        |
      | Aaliyah Haq     | Aaliyah.haq     |
      | Alice Duval     | Alice           |
      | Brody Alan      | Brody           |
      | Cecil Bonaparte | Cecil.bonaparte |
      | David Cole      | David.cole      |
