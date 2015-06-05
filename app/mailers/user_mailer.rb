class UserMailer < ApplicationMailer
    default from: 'dumbass@addbass.com'

    def down_email(project)

      @project = project

      puts "#{@project.user_id}"
      @user = User.find(@project.user_id)
      puts "#{@user.email}"
      # @user  = User.find(project.user_id)
      # @url  = Project.url
      @url  = @project.url
      puts "#{@url}"
      puts "now going to send email below"

      mail(to: @user.email, subject: 'Your site is down')

      # mail(to: @user.email, subject: 'Your site is down')
    end
end
