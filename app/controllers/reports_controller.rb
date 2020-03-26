class ReportsController < ApplicationController
    def index
        @report = "test_report"
    end

    def new
        puts params[:report]
        @report = params[:report]
        render "reports/index"
    end
end
