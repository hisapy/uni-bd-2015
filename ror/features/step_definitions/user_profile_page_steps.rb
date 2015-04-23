Given(/^an existing User with$/) do | user_attrs |
  @user = FactoryGirl.create(:user, user_attrs.hashes.first)
end

When(/^I visit "(.*?)"$/) do | path |
  visit path
end

Then(/^I should see Hisa's profile page$/) do
  expect(current_path).to eq profile_path(@user.username)
  expect(page).to have_text(@user.first_name)
  expect(page).to have_text(@user.last_name)
  expect(page).to have_selector("a[href='#{@user.github_url}']")
  # expect(page).to have_text(@user.roles)
end
