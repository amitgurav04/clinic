class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
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
