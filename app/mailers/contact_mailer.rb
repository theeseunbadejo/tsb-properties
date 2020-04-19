class ContactMailer < ApplicationMailer

  def email_agent agent_id, first_name, last_name, email, message
    @agent = Account.find(agent_id)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @message = message

    if @agent.present?
      mail to: @agent.email, message: "You Have A New Contact From TSB Properties"
    end
  end
end
