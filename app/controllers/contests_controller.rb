class ContestsController < ApplicationController
  def new
    @contest = Contest.new
  end

  def create
    Contest.create(contest_params)
    redirect_to contests_path
  end

  def index
    @contests = Contest.all
  end

  private

  def contest_params
    params.require(:contest).permit(:title, :description, problems_attributes: [:id, :title, :description, :_destroy])
  end
end
