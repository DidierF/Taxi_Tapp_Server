class UserTaxiCallsController < ApplicationController
  before_action :set_user_taxi_call, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /user_taxi_calls
  # GET /user_taxi_calls.json
  def index
    @user_taxi_calls = UserTaxiCall.all
  end

  # GET /user_taxi_calls/1
  # GET /user_taxi_calls/1.json
  def show
  end

  # GET /user_taxi_calls/new
  def new
    @user_taxi_call = UserTaxiCall.new
  end

  # GET /user_taxi_calls/1/edit
  def edit
  end

  # POST /user_taxi_calls
  # POST /user_taxi_calls.json
  def create
    call_params = user_taxi_call_params
    puts call_params
    @user_taxi_call = UserTaxiCall.new(call_params)

    respond_to do |format|
      if @user_taxi_call.save
        format.html { redirect_to @user_taxi_call, notice: 'User taxi call was successfully created.' }
        # format.json { render :show, status: :created, location: @user_taxi_call }
        format.json { render :show, status: :created, location: @user_taxi_call }
      else
        format.html { render :new }
        format.json { render json: @user_taxi_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_taxi_calls/1
  # PATCH/PUT /user_taxi_calls/1.json
  def update
    respond_to do |format|
      if @user_taxi_call.update(user_taxi_call_params)
        format.html { redirect_to @user_taxi_call, notice: 'User taxi call was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_taxi_call }
      else
        format.html { render :edit }
        format.json { render json: @user_taxi_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_taxi_calls/1
  # DELETE /user_taxi_calls/1.json
  def destroy
    @user_taxi_call.destroy
    respond_to do |format|
      format.html { redirect_to user_taxi_calls_url, notice: 'User taxi call was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_taxi_call
      @user_taxi_call = UserTaxiCall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_taxi_call_params
      call_params = params.require(:user_taxi_call)[0]
      call_params = call_params.each { |k, v| call_params[k] = v[0] }

      call_params.permit(:user_id, :taxi_id, :latitude, :longitude)
    end
end