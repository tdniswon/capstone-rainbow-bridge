class ReportsController < ApplicationController
    def index
        @report = "dietary_restrictions"
    end


    def new
        puts params[:report]
        @report = params[:report]
        render "reports/index"

    end
end
