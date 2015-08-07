module ApplicationHelper

	def display_flash
		message(:alert) || message(:notice)
	end

	def message(type)
		
		if flash[type]
			content_tag :div, class: type do 
				content_tag :p do
					flash[type]		
				end
			end
		end
	end
end
