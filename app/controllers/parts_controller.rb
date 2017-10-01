class PartsController < ApplicationController
  before_action :set_part, only: [:show]

  # GET /parts/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part
      @part = Part.find(params[:id])
    end

end