module ApplicationHelper

  def site_title
    return Settings.site_title unless Settings.site_title.nil?
    return 'Foodclub'
  end

end
