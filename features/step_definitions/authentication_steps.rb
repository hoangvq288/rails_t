Given("I visit the homepage") do
  visit root_path
end

When("I fill in the sign up form") do
  click_link "Sign up"
  fill_in "user_email", :with => "test@testdomain.test"
  fill_in "user_password", :with => 'pa$$word'
  fill_in "user_password_confirmation", :with => 'pa$$word'

  click_button "Sign up"
end

When("I confirm the email") do
  open_email("test@testdomain.test")
  visit_in_email("Confirm my account")
end

Then("I should see that my account is confirmed") do
  message = "Your email address has been successfully confirmed"
  expect(page).to have_content(message)
end