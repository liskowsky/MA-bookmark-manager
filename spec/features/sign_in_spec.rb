feature "sign in" do
  scenario "user sign up" do
    visit "/users/sign_up"
    fill_in("email", with: "Bob@bob.com")
    fill_in("password", with: "12345")

    expect{ click_button("Sign up") }.to change(User, :count).by(1)
    expect(page).to have_content "Welcome, Bob@bob.com"
    expect(User.first.email).to eq "Bob@bob.com"
  end
end
