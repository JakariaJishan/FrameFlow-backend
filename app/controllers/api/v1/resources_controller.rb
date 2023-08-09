class Api::V1::ResourcesController < ApplicationController
  before_action :set_api_v1_resource, only: %i[ show update destroy ]

  # GET /api/v1/resources
  def index
    @api_v1_resources = Api::V1::Resource.all

    render json: @api_v1_resources
  end

  # GET /api/v1/resources/1
  def show
    render json: @api_v1_resource
  end

  # POST /api/v1/resources
  def create
    @api_v1_resource = Api::V1::Resource.new(api_v1_resource_params)

    if @api_v1_resource.save
      render json: @api_v1_resource, status: :created, location: @api_v1_resource
    else
      render json: @api_v1_resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/resources/1
  def update
    if @api_v1_resource.update(api_v1_resource_params)
      render json: @api_v1_resource
    else
      render json: @api_v1_resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/resources/1
  def destroy
    @api_v1_resource.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_resource
      @api_v1_resource = Api::V1::Resource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_resource_params
      params.fetch(:api_v1_resource, {})
    end
end
