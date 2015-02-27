class UpcDescriptionsController < ApplicationController
  before_action :set_upc_description, only: [:show, :update, :destroy]

  # GET /upc_descriptions
  # GET /upc_descriptions.json
  def index
    @upc_descriptions = UpcDescription.all

    render json: @upc_descriptions
  end

  # GET /upc_descriptions/1
  # GET /upc_descriptions/1.json
  def show
    render json: @upc_description
  end

  # POST /upc_descriptions
  # POST /upc_descriptions.json
  def create
    @upc_description = UpcDescription.new(upc_description_params)

    if @upc_description.save
      render json: @upc_description, status: :created, location: @upc_description
    else
      render json: @upc_description.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /upc_descriptions/1
  # PATCH/PUT /upc_descriptions/1.json
  def update
    @upc_description = UpcDescription.find(params[:id])

    if @upc_description.update(upc_description_params)
      head :no_content
    else
      render json: @upc_description.errors, status: :unprocessable_entity
    end
  end

  # DELETE /upc_descriptions/1
  # DELETE /upc_descriptions/1.json
  def destroy
    @upc_description.destroy

    head :no_content
  end

  private

    def set_upc_description
      @upc_description = UpcDescription.find(params[:id])
    end

    def upc_description_params
      params[:upc_description].permit(:upc,:vendor,:sizeof,:fit,:style,:color,:gender)
    end
end
