class EntriesController < ApplicationController
	def index
		@project = Project.find_by(id: params[:project_id])
		@entries = @project.entries
	end

	def new
		@project = Project.find_by(id: params[:project_id])
		@entry = @project.entries.new
	end

	def create
		@project = Project.find params[:project_id]
		@entry = @project.entries.new entry_params
		if @entry.save
			redirect_to project_entries_path(@project.id)
		else
			render 'new'
		end
	end

	def edit
		@project = Project.find params[:project_id]
		@entry = @project.entries.find params[:id]

	end

	def update
		@entry = Entry.find(params[:id])

		if @entry.update entry_params
			redirect_to action: 'index'
		else
			render 'edit'
		end
		
	end

	def destroy
		@project = Project.find_by(id: params[:project_id])
		@entry = @project.entries.find params[:id]
		if @entry.destroy
			redirect_to action: 'index'
		end
	end

	private
	def entry_params
		params.require(:entry).permit(:hours, :minutes, :comments)
	end
end
