class PeopleController < ApplicationController

	def new
		@person = Person.new
	end

	def create
		@person = Person.new person_params
			if @person.save
				redirect_to new_person_path
			else
				redirect_to person_path
			end
	end

	def index
		@people = Person.all
	end

	private
		def person_params
			params.require(:person).permit(:name)
		end 	

end
