Given /^I am on the home page$/ do
  visit root_path
end

When /^I enter a task "([^"]*)"$/ do |name|
  fill_in 'Task', :with => name
  click_on 'Add Task'
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

When /^I mark "([^"]*)" as done$/ do |name|
  task = Task.find_by_name(name)
  within "##{task.id}" do
    click_on 'Done'
  end
end