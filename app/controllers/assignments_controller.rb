class AssignmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end
end
