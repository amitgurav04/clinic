class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @agreed_consents = []
    consent_categories = @user.consent_categories.map(&:consents)
    consent_categories.each do |category|
      @agreed_consents.push(category.first.description) if !category.nil?
    end
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "file_name",
               :template => "users/show.html.erb"
               # :layout => "pdf.html"
      end
    end
  end

end
