class VotesController < ApplicationController
  before_action :set_vote, only: [:destroy]

  # GET /votes/new
  def new
    @vote = Vote.new
  end

  # POST /votes
  def create
    @vote = Vote.new(vote_params)
    @vote.suggestion = Suggestion.find([:suggestion_id])
    if @vote.save
      redirect_to @vote.suggestion, notice: 'Thanks for voting.'
    else
      render :new
    end
  end

  # DELETE /votes/1
  def destroy
    @vote.destroy
    redirect_to votes_url, notice: 'Vote was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vote_params
      params.require(:vote).permit(:suggestion_id)
    end
end
