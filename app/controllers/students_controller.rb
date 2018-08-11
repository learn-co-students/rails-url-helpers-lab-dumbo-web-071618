class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(set_student)
  end

  def activate
    @student = Student.find(set_student)
    @student.toggle(:active).save
  end

  def update
    @student = Student.find(set_student)
    @student.toggle(:active)
    #@student.reload
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
