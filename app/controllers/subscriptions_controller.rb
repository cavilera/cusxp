class SubscriptionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:create]

  # GET /subscriptions
  # GET /subscriptions.json
  #def index
  #  @subscriptions = Subscription.all
  #end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to thanks_path, notice: 'Subscription was successfully created.' }
      else
        format.html { redirect_to root_path }
      end
    end
  end

  def thanks
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit(:first_name, :last_name, :organization, :title, :country, :mobile, :email, :message)
    end
end
