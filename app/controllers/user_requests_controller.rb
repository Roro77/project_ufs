class UserRequestsController < ApplicationController
  before_action :set_user_request, only: [:show, :update, :destroy]

  # GET /user_requests
  def index
    @user_requests = UserRequest.all

    render json: @user_requests
  end

  # GET /user_requests/1
  def show
    render json: @user_request
  end

  # POST /user_requests
  def create
    @user_request = UserRequest.new(user_request_params)

    if @user_request.save
      render json: @user_request, status: :created, location: @user_request
    else
      render json: @user_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_requests/1
  def update
    if @user_request.update(user_request_params)
      render json: @user_request
    else
      render json: @user_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_requests/1
  def destroy
    @user_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_request
      @user_request = UserRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_request_params
      params.require(:user_request).permit(:user_id, :date)
    end
end
