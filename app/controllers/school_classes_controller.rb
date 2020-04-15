class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def new
  end

  def create
    @school_class = SchoolClass.new(post_params(:room_number, :title))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def update
    @school_class = SchoolClass.update(post_params(:room_number, :title))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  private
  def school_class_params
end
