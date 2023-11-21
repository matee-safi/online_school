class SchoolClassesController < ApplicationController
  before_action :authenticate_user!

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end
end
