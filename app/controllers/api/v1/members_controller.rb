class Api::V1::MembersController < ApplicationController
  before_action :set_api_v1_member, only: %i[ show update destroy ]

  # GET /api/v1/members
  def index
    @api_v1_members = Api::V1::Member.all

    render json: @api_v1_members
  end

  # GET /api/v1/members/1
  def show
    render json: @api_v1_member
  end

  # POST /api/v1/members
  def create
    @api_v1_member = Api::V1::Member.new(api_v1_member_params)

    if @api_v1_member.save
      render json: @api_v1_member, status: :created, location: @api_v1_member
    else
      render json: @api_v1_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/members/1
  def update
    if @api_v1_member.update(api_v1_member_params)
      render json: @api_v1_member
    else
      render json: @api_v1_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/members/1
  def destroy
    @api_v1_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_member
      @api_v1_member = Api::V1::Member.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_member_params
      params.fetch(:api_v1_member, {})
    end
end
