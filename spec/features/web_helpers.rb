def sign_up
  visit "/users/sign_up"
  fill_in("email", with: "Bob@bob.com")
  fill_in("password", with: "12345")
  fill_in("password_confirmation", with: "12345")
end
