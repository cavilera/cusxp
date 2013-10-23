class SubscriptionResultsController < ApplicationController
  http_basic_authenticate_with :name => "CusXP-admin", :password => "test@0701"

  def index
    @subscriptions = Subscription.all
  end
end
