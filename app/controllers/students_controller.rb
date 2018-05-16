class StudentsController < ApplicationController
    before_action :authenticate_member!, :new_student_path, only: [:index, :create]
    respond_to :html, :js
    #Links to my /students route
    #links to a /views/students/index.html.erb
    def index
        @students = Student.all
    end

    #Links to my  /students/:id route
    #links to a views/students/show.html.erb
    def show
        @student = Student.find(params[:id])
    end


    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to '/students'
    end


    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to '/students'
    end

    
    def destroy
        Student.find(params[:id]).destroy
        redirect_to '/students'
    end

    private

    def student_params
        params.require(:student).permit(:cohort_id, :first_name, :last_name, :age, :education, :email)
    end

end
