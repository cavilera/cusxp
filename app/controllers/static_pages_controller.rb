class StaticPagesController < ApplicationController

  #http_basic_authenticate_with :name => "manoj", :password => "started010713"
  before_action :signed_in_user

  def organization
  end

  def customer
  end

  def about
  end


  private
  def signed_in_user
    redirect_to sign_in_path, notice: "Please sign in." unless signed_in?
  end

end
