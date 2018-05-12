class CohortsController < ApplicationController
    #Links to my /cohorts route
    #links to a /views/couhorts/index.html.erb
    def index
        @cohorts = Cohort.all
    end

    #Links to my  /cohorts/:id route
    #links to a views/cohorts/show.html.erb
    def show
        @cohort = Cohort.find(params[:id])
    end


    def new
        @cohort = Cohort.new
    end

    def create
        @cohort = Cohort.create(cohort_params)
        redirect_to '/cohorts'
    end


    def edit
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to '/cohorts'
    end


    def destroy
        Cohort.find(params[:id]).destroy
        redirect_to '/cohorts'
    end

    private

    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :instructor_id)
    end

end
