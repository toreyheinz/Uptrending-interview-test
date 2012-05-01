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
  within('li', :text => name) do
    click_on 'Done'
  end
end

Then /^"([^"]*)" should be completed$/ do |task_name|
  within '#completed' do
    page.should have_content(task_name)
  end
end