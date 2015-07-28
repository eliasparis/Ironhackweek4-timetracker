class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
	end

	def show
		unless @projects = Project.find_by(id: params[:id])
		render 'no_projects_found'
		end
	end
end
