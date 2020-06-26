class IssuesController < ApplicationController
  http_basic_authenticate_with name: "xxx", password: "xxx"
  before_action :set_issue, only: [:show]
  
    def index
      @issues = Issue.all
      render json: @issues
    end
  
    def show
      render json: @issue
    end
  
  
    private
      def set_issue
        @issue = Issue.find(params[:id])
      end
  end