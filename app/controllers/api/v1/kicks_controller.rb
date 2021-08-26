class Api::V1::KicksController < ApplicationController
    before_action :set_kick, only: [:show, :edit, :update, :destroy]

    # GET /kicks
  # GET /kicks.json
  def index
    @kicks = Kick.all.order(brand: :asc)
    render json: @kicks
  end

  # GET /kicks/1
  # GET /kicks/1.json
  def show
    if @kick
      render json: @kick
    else
      render json: @kick.errors
    end
  end

  # GET /kicks/new
  def new
    @kick = Kick.new
  end

  # GET /kicks/1/edit
  def edit
  end

  # POST /kicks
  # POST /kicks.json
  def create
    @kick = Kick.new(kick_params)


    if @kick.save
      render json: @kick
    else
      render json: @kick.errors
    end
  end

  # PATCH/PUT /kicks/1
  # PATCH/PUT /kicks/1.json
  def update
  end

  # DELETE /kicks/1
  # DELETE /kicks/1.json
  def destroy
    @kick.destroy

    render json: { notice: 'Kicks was successfully removed.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kick
      @kick = Kick.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kick_params
      params.permit(:brand, :name, :style, :quantity)
    end
end
