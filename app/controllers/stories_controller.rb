# frozen_string_literal: true
class StoriesController < OpenReadController
  before_action :set_story, only: [:show, :update, :destroy]

  # GET /stories
  def index
    @stories = Story.all

    render json: @stories
  end

  # GET /stories/1
  def show
    render json: @story
  end

  # POST /stories
  def create
    @story = current_user.stories.build(story_params)

    if @story.save
      render json: @story, status: :created
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stories/1
  def update
    if @story.update(story_params)
      render json: @story
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stories/1
  def destroy
    @story.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_story
    @story = current_user.stories.find(params[:id])
  end
  private :set_story

  # Only allow a trusted parameter "white list" through.
  def story_params
    params.require(:story).permit(:title, :content)
  end
  private :story_params
end
