class Project < ActiveRecord::Base

	has_many :entries
	has_many :people , through :participations
	validates :name, presence: true , uniqueness: true, length: {maximum: 30} , format: {with: /\A[0-9a-zA-z ]+\z/}
	
	def self.iron_find(id)
		where(id: id).first
	end

	def self.clead_old
		projects = where("created_at < ?", Date.current - 1.week)
		projects.destroy_all
	end

	def self.last_created_projects(number)
		order(created_at: :desc).limit(number)	
	end

end
