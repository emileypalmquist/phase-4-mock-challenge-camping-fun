class SignupsController < ApplicationController
  def create
    signup = Signup.create!(signup_params)
    render json: signup.activity, status: :created
  end

  def update
    signup = Signup.find(params[:id])
    signup.update!(signup_params)
    render json: signup
  end

  private

  def signup_params
    params.permit(:time, :camper_id, :activity_id)
  end
end
