class UsersController < ApplicationController
  before_action :find_user, only: %i[show]

  # GET /users/:id
  def show
    render json: @user,
           only: %i[id username city],
           include: [items: { only: %i[id name description price] }]
  end

  private

  # set instance variable for show/update/destroy
  def find_user
    @user = User.find(params[:id])
  end
end
