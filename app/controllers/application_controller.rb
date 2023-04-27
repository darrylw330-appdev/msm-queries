class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "application_templates/home.html.erb"})
  end
end
