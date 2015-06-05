class ApplicationMailer < ActionMailer::Base
  require 'pry'
  default from: "dumbass@addbass.com"
  layout 'mailer'
end
