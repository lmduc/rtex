class RecordsController < ApplicationController
  def new
    @step = params[:step].to_i
    @contest = Contest.find(params[:contest_id])
    @problem = @contest.problems[@step]
    @record = Record.new(problem: @problem)

    redirect_to root_path unless @problem
  end

  def create
    @record = Record.create(record_params)
    @problem = @record.problem
    @contest = @problem.contest
    @step = params[:step].to_i + 1

    render nothing: true
  end

  private

  def record_params
    params.require(:record).permit(:problem_id, data: [:time, :text])
  end
end
