module LoginHelper
  def login
    FactoryGirl.create(:user_four)
    visit new_session_path
    fill_in("Email", :with => "joe3@joe.com")
    fill_in("Password", :with => "password1234")
    click_button("Log In")
  end

  def signup
    visit new_user_path
    fill_in("Name", :with => "Joe")
    fill_in("Email", :with => "joe@joe.com")
    fill_in("Password", :with => "password1234")
    click_button("Sign Up")
  end
end
