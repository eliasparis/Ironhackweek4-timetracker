class EntriesController < ApplicationController
	def index
		params[:id]
		@project = Project.find_by(id: params[:id])
		@entries = @project.entries
	end
end
