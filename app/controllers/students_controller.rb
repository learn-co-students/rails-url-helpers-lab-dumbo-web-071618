class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    # binding.pry
  end

  def show
    @student = Student.find(params[:id])    
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end