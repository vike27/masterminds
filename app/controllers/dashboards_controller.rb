class DashboardsController < ApplicationController
before_action :authenticate_user!, only: [:show], notice: 'you must sign in first!'

  def show
  end

private

  def dashboards_params
    params.permit! 
  end

end
