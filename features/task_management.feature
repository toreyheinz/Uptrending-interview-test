Feature: Manage todo tasks

Scenario: I can create a list of task I would like to do!
  Given I am on the home page
  When I enter a task "Finish trim next to frig"
  And I enter a task "Clean up back yard"
  Then I should see "Finish trim next to frig"
  Then I should see "Clean up back yard"

Scenario: I can mark tasks as done
  Given I am on the home page
  When I mark "Finish trim next to frig" as done
  Then I should see "Finish trim next to frig is COMPLETE!"