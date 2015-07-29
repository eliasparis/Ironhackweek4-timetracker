class Entry < ActiveRecord::Base
	belongs_to :project
	validates :hours, numericality: {only_integer: true, greather_than: 0}, presence: true
	validates :minutes, numericality: {only_integer: true}, presence: true
	validates :datetime, presence: true
	validates :project, presence: true
end
