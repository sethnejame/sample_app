require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup info" do
    get signup_path
    assert_no_difference 'User.count' do
      post signup_path, params: { user: { name: "",
                                          email: "user@invalid",
                                          password: "foo", 
                                          password_confirmation: "bar" } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end

  test "valid signup info" do
    get signup_path
    assert_difference 'User.count', 1 do
      post signup_path, params: { user: { name: "Fat Bob",
                                          email: "fatbob@gmail.com",
                                          password: "abc123", 
                                          password_confirmation: "abc123" } }
    end
    follow_redirect!
    assert_template 'users/show'
  end
      

end
