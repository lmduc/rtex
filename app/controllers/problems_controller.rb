class ProblemsController < ApplicationController
  def replay
    @problem = Problem.find(params[:id])
    @record = @problem.records.last
    gon.records = @record.data_as_array
  end
end
