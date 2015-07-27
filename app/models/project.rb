class Project < ActiveRecord::Base

	def iron_find(id)
		where(id: id).first
	end

end
