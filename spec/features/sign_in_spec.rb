require_relative 'web_helpers'

feature "sign in" do
  scenario "user signing up" do
    sign_up
    expect{ click_button("Sign up") }.to change(User, :count).by(1)
    expect(page).to have_content "Welcome, Bob@bob.com"
    expect(User.first.email).to eq "Bob@bob.com"
  end
  scenario "user enters invalid password" do
    sign_up
    fill_in("password_confirmation", with: "12354")
    expect{ click_button("Sign up") }.not_to change(User, :count)
  end
end
