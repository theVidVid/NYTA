class InstructorsController < ApplicationController
    before_action :authenticate_member!
    #Links to my /instructors route
    #links to a /views/instructors/index.html.erb
    def index
        @instructors = Instructor.all
    end

    #Links to my  /instructors/:id route
    #links to a views/instructors/show.html.erb
    def show
        @instructor = Instructor.find(params[:id])
    end

    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.create(instructor_params)
        redirect_to '/instructors'
    end

    def edit
        @instructor = Instructor.find(params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        redirect_to '/instructors'
    end

    def destroy
        Instructor.find(params[:id]).destroy
        redirect_to '/instructors'
    end

    private

    def instructor_params
        params.require(:instructor).permit(:first_name, :last_name, :age, :education, :email, :salary)
    end

end
