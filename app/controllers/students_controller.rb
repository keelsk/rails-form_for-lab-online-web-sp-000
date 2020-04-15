class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def new
  end

  def create
    @student = Student.new(post_params(:room_number, :title))
    @student.save
    redirect_to school_class_path(@student)
  end

  def edit
    @student = Student.find_by_id(params[:id])
  end

  def update
    @student = Student.update(post_params(:room_number, :title))
    @student.save
    redirect_to school_class_path(@student)
  end
end
