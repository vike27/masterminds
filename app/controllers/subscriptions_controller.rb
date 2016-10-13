class SubscriptionsController < ApplicationController

 def create
    @subscription = Subscription.new(subscription_params)
    @subscription.save
    flash[:notice] = "Thanks for subscribing! More info coming soon!"
    redirect_to(:back)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit!
    end

end
