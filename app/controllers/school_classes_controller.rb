class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def update
    @school_class = SchoolClass.find_by_id(params[:id])
    @school_class = SchoolClass.update(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  private
  def school_class_params
    params.require(:school_class).permit(*args)
  end
end
