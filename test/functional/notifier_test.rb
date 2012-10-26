require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "comment_recieved" do
    mail = Notifier.comment_recieved
    assert_equal "Comment recieved", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "comment_delivered" do
    mail = Notifier.comment_delivered
    assert_equal "Comment delivered", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
