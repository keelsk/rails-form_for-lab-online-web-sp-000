class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def create 
    @school_class = SchoolClass.new(post_params(:room_number, :title))
    @school_class.room_number = post_params()
  end
end