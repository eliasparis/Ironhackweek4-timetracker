class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
		if @projects.empty?
			render template: 'projects/no_yet'
		end
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new projects_params
		if @project.save
			redirect_to projects_path
			else
				render 'new'
			end	
	end

	def destroy
		@project = Project.find_by(id: params[:id])
		if @project.destroy
			redirect_to projects_path
		end
	end

		
	def show
		unless @projects = Project.find_by(id: params[:id])
		render 'no_projects_found'
		end
	end

	private
		def projects_params
			params.require(:project).permit(:name, :desription)
		end 	
end
