class PagesController < ApplicationController
  layout "prelaunch_application"

  def index
    layout "application"
  end

  def prelaunch
  end

  def invite
    raise "All fields are mandatory" if [:inputEmail, :inputFirstName, :inputLastName, :inputInvest].any? { |field| params[field].blank? }

    Gibbon.list_subscribe id: "13fe50d34b", email_address: params[:inputEmail], merge_vars: { 
      fname: params[:inputFirstName], lname: params[:inputLastName], invest: params[:inputInvest].to_f }
    @ret = { status: "success", msg: "You're almost done! Please check your mailbox for the confirmation email." }
  rescue Gibbon::MailChimpError => mce
    @ret = { status: "error", msg: mce }
  rescue Exception => e
    @ret = { status: "error", msg: e }
  ensure
    render :prelaunch
  end

  def how_it_works
  end

  def faq
  end

end
