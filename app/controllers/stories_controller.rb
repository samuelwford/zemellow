class StoriesController < ApplicationController
  before_action :set_story, only: [:show]

  # GET /stories/
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

end