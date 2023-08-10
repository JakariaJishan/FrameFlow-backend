class Api::V1::ResourcesController < ApplicationController
  before_action :set_resource, only: %i[ show update destroy ]

  # GET /api/v1/resources
  def index
    @resources = Resource.all

    render json: @resources
  end

  # GET /api/v1/resources/1
  def show
    render json: @resource
  end

  # POST /api/v1/resources
  def create
    @resource = Resource.new(resource_params)

    if @resource.save
      render json: @resource, status: :created, location: @resource
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/resources/1
  def update
    if @resource.update(resource_params)
      render json: @resource
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/resources/1
  def destroy
    @resource.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resource_params
      params.require(:resource).permit(:url, :type, :title)
    end
end
