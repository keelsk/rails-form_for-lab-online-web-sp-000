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
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find_by_id(params[:id])
  end

  def update
    @student = Student.update(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  private
  def student_params
    params.require(:student).permit(:room_number, :title) 
  end
end
