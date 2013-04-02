class PagesController < ApplicationController
  def index
  end

  def prelaunch
    # temporarily code everything in a single view file
    render layout: false
  end

  def invite
    Gibbon.list_subscribe id: "13fe50d34b", email_address: params[:email]
    render inline: "Request submitted successfully. Please check your email."
  rescue Gibbon::MailChimpError => mce
    render inline: mce.message
  end

end
