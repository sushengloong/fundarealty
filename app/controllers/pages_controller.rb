class PagesController < ApplicationController
  def index
  end

  def prelaunch
    # temporarily code everything in a single view file
    render layout: false
  end

  def invite
    raise "All fields are mandatory" if [:inputEmail, :inputFirstName, :inputLastName, :inputInvestRange].any? { |field| params[field].blank? }
    invest_range = params[:inputInvestRange].split('-').map { |amt| amt.to_f }

    Gibbon.list_subscribe id: "13fe50d34b", email_address: params[:inputEmail], merge_vars: { 
      fname: params[:inputFirstName], lname: params[:inputLastName], min_invest: invest_range[0], max_invest: invest_range[1] }
    @ret = { status: "success", msg: "You're almost done! Please check your mailbox for the confirmation email." }
  rescue Gibbon::MailChimpError => mce
    @ret = { status: "error", msg: mce }
  rescue Exception => e
    @ret = { status: "error", msg: e }
  ensure
    render :prelaunch, layout: false
  end

end
