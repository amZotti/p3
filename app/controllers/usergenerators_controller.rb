class UsergeneratorsController < ApplicationController
  def index

  end

  def create
    @generated_users = Generator.generate_users(user_generation_params)
    render :index
  end

  private

  def user_generation_params
    params.permit(
      :users,
      :money,
      :email_address,
      :shirt_size,
      :birthdate,
      :profile,
      :password
    )
  end
end
