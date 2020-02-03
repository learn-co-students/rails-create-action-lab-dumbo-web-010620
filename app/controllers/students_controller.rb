class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new 
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # need to cross ref this with the form responsible for generating params
    # also I think we did this before in a stepwise fashion, using Student.new not create
    # it looks like it works however!

    redirect_to @student
    # student_path
  end

end
