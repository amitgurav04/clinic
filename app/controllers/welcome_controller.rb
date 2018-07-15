class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
  end

  def static
  end
end
