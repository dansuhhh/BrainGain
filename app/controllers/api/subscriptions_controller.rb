class Api::SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.where(user_id: current_user.id)
    render "api/subscriptions/index"
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.flag = false;
    @subscription.user_id = current_user.id
    if @subscription.save
      render "api/subscriptions/show"
    else
      render json: @subscription.errors.full_messages, status: 422
    end
  end

  def update
    @subscription = Subscription.find(params[:id])
    if @subscription.update(subscription_params)
      render "api/subscriptions/show"
    else
      render json: @subscription.errors.full_message, status: 422
    end
  end

  def show
    @subscription = Subscription.find(params[:id])
    render "api/subscriptions/show"
  end

  private
  def subscription_params
    params.require(:subscription).permit(:subject_id, :flag)
  end

end
