class ProjectsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  private

    def record_not_found
      redirect_to projects_path
    end

end
