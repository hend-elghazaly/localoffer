require 'test_helper'

class WelcomeMailerTest < ActionMailer::TestCase
  test "welcome" do
    assert_raises(NameError) do
     # Create the email and store it for further assertions
     mail = WelcomeMailer.welcome("friend@example.com")

     # Send the email, then test that it got queued
     assert_emails 1 do
       email.deliver_now
     end

     # Test the body of the sent email contains what we expect it to
     assert_equal ['me@example.com'], email.from
     assert_equal ['friend@example.com'], email.to
     assert_equal 'Hello', email.subject
     assert_equal read_fixture('welcome_mailer').join, email.body.to_s
   end
 end
#   test "welcome" do
#     assert_raises(NameError) do
#     mail = WelcomeMailer.welcome("friend@example.com")
#     assert_equal "Hello", mail.subject
#     assert_equal ["friend@example.com"], email.to
#     assert_equal ["me@example.com"], mail.from
#     assert_match "Hi", mail.body.encoded
#   end
# end

end

# mail to: @user.email, subject: "Hello #{@user.first_name} Welcome !"
# assert_equal 'Hi friend@example.com,', email.subject
