class Api::V1::MembersController < ApplicationController
  before_action :set_member, only: %i[ show update destroy ]

  # GET /api/v1/members
  def index
    @members = Member.all

    render json: @members
  end

  # GET /api/v1/members/1
  def show
    render json: @member
  end

  # POST /api/v1/members
  def create
    @member = Member.new(member_params)

    if @member.save
      render json: @member, status: :created, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/members/1
  def update
    if @member.update(member_params)
      render json: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/members/1
  def destroy
    @member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_params
      params.require(:member).permit(:user_id, :group_id)
    end
end
