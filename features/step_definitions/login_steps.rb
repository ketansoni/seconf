Given(/^I am on the home page$/) do
  visit('http://testphp.vulnweb.com/login.php')
end

When(/^I login with valid credentials$/) do
  fill_in('uname',:with => "test")
  fill_in('pass',:with => "test")
  find_button('login').click
end

Then(/^I should be logged in$/) do
  page.should have_xpath("//a[@href='logout.php']")
end