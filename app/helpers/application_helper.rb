module ApplicationHelper
  def app_display_name
    "Fund Realty"
  end

  def app_display_tagline
    "Invest In Real Estate Collectively"
  end

  def app_display_title
    "#{app_display_name} - #{app_display_tagline}"
  end

  def title page_title
    content_for(:title) { page_title }
  end
end
