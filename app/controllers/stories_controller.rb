class StoriesController < ApplicationController
  before_action :set_story, only: [:show]

  # GET /:slug
  def show
  end

  # GET /:slug/:part_id
  def show_part
    @part = Part.includes(:story).where(slug: params[:part_id], 'stories.slug' => params[:id]) || Part.find(params[:part_id])
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find_by(slug: params[:id]) || Story.find(params[:id])
    end

end