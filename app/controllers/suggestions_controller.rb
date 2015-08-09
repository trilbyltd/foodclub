class SuggestionsController < ApplicationController
  before_action :set_suggestion, only: [:show, :edit, :update, :destroy, :upvote]

  # GET /suggestions
  def index
    @suggestions = Suggestion.all
  end

  # GET /suggestions/1
  def show
  end

  # GET /suggestions/new
  def new
    @suggestion = Suggestion.new
  end

  # POST /suggestions
  def create
    @suggestion = Suggestion.new(suggestion_params)

    if @suggestion.save
      redirect_to action: "index", notice: 'Suggestion was successfully created.'
    else
      render :new
    end
  end

  # DELETE /suggestions/1
  def destroy
    @suggestion.destroy
    redirect_to suggestions_url, notice: 'Suggestion was successfully destroyed.'
  end

  def upvote
    @vote = @suggestion.votes.create
    redirect_to(root_path)
  end

  def get_foursquare_id
    #code
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggestion
      @suggestion = Suggestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def suggestion_params
      params.require(:suggestion).permit(:name, :votes, :foursquare_id, :user_id, :visited)
    end
end
