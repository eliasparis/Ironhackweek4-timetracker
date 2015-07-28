Project.create name: 'Ironhack', description: 'Ironhack is a s....'
Project.create name: 'Time tracking app'
Project.create name: 'Recipes', description: 'Track my favourite Recipes'


25.times do |i|
	
	project = Project.create name: "Name#{i}"  , description: 'ttttt'
	project.entries.create(hours: "#{i+2}" , minutes: "#{i+30}") 

end









 