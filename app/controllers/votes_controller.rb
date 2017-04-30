class VotesController < OpenReadController
  before_action :set_vote, only: [:show, :update, :destroy]

  # GET /votes
  def index
    @votes = Vote.all

    render json: @votes
  end

  # GET /votes/1
  def show
    render json: @vote
  end

  # POST /votes
  def create
    if vote_exists
      @vote = current_user.votes.find_by(line_id: params[:vote][:line_id])
      update
    else
      @vote = current_user.votes.build(vote_params)
      if @vote.save
        render json: @vote, status: :created, location: @vote
      else
        render json: @vote.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /votes/1
  def update
    if @vote.update(vote_params)
      render json: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /votes/1
  def destroy
    @vote.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vote
    @vote = current_user.votes.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def vote_params
    params.require(:vote).permit(:user_id, :line_id, :value)
  end

  def vote_exists
    current_user.votes.any? do |vote|
      vote.line_id == params[:vote][:line_id].to_i
    end
  end
end
