25.times do |i|
	
	project = Project.create name: "Name#{i}"  , description: 'ttttt'
	project.entries.create(hours: "#{i+2}" , minutes: "#{i+30}") 

end

Person.create name: "Elias"
Person.create name: "Eli"
Person.create name: "Alberto"









 