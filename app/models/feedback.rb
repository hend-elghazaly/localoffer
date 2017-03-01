class Feedback < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true

  def headers
    {
      :subject => "Feedback Form",
      #change email later
      :to => "localofferyp@gmail.com",
      :form => %("#{name}" <#{email}>)
  }
  end
end
