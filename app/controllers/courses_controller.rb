class CoursesController < ApplicationController
    before_action :authenticate_member!
    #Links to my /courses route
    #links to a /views/courses/index.html.erb
    def index
        @courses = Course.all
    end

    #Links to my /courses/:id route
    #links to a views/courses/show.html.erb
    def show
        @course = Course.find(params[:id])
    end


    def new
        @course = Course.new
    end

    def create
        @course = Course.create(course_params)
        redirect_to '/courses'
    end


    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to '/courses'
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to '/courses'
    end

    private

    def course_params
        params.require(:course).permit(:course_name)
    end

end