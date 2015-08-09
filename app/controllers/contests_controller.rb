class ContestsController < ApplicationController
  def new
    @contest = Contest.new
  end

  def create
    byebug
  end

  private

  def contest_params
    params.require(:contest).permit(:title, :description, problems_attributes: [:id, :title, :description, :_destroy])
  end
end
