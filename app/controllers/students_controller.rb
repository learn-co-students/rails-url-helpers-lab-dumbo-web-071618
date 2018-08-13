class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    # binding.pry
  end

  def show
    @student = Student.find(params[:id])
    # binding.pry
    @student.active ? @message = "This student is currently active." : @message = "This student is currently inactive."
  end

  def activate
    # binding.pry
    @student = Student.find(params[:id])
    @student.active ? @student.active = false : @student.active = true
    @student.save
    # binding.pry
    redirect_to :action => 'show'
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end