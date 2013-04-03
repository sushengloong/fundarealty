class PagesController < ApplicationController
  def index
  end

  def prelaunch
    # temporarily code everything in a single view file
    render layout: false
  end

  def invite
    Gibbon.list_subscribe id: "13fe50d34b", email_address: params[:email]
    @ret = { status: "success", msg: "You're almost done! Please check your mailbox for the confirmation email." }
  rescue Gibbon::MailChimpError => mce
    @ret = { status: "error", msg: mce }
  ensure
    render :prelaunch, layout: false
  end

end
