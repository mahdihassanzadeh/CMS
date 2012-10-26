class Notifier < ActionMailer::Base
  default :from => 'ahmmad moradi <ahmmadmoradi@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.comment_recieved.subject
  #
  def comment_recieved(comment)
    @comment = comment

    mail :to => comment.email_address, :subject => "KM CMS comment confirmation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.comment_delivered.subject
  #
  def comment_delivered(comment)
    @comment = comment

    mail :to => comment.email_address, :subject => "KM CMS comment confirmation"
  end
end
