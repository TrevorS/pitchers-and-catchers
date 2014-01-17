namespace :data do
  desc 'Create MLB wide events'
  task create_events: :environment do

    puts "Deleting #{Event.delete_all} Events."

    events = [
      { name: 'Spring Training Opens', year: 2014, month: 2,  date: 13 },
      { name: 'Opening Series',        year: 2014, month: 3,  date: 22 },
      { name: 'Opening Night',         year: 2014, month: 3,  date: 30 },
      { name: 'Opening Day',           year: 2014, month: 3,  date: 31 },
      { name: 'Jackie Robinson Day',   year: 2014, month: 4,  date: 15 },
      { name: 'Civil Rights Game',     year: 2014, month: 5,  date: 30 },
      { name: 'Home Run Derby',        year: 2014, month: 7,  date: 14 },
      { name: 'All-Star Game',         year: 2014, month: 7,  date: 15 },
      { name: 'Roberto Clemente Day',  year: 2014, month: 9,  date: 17 },
      { name: 'Postseason',            year: 2014, month: 9,  date: 30 },
      { name: 'World Series',          year: 2014, month: 10, date: 22 }
    ]

    events.each do |event|
      name  = event[:name]
      start = DateTime.new(event[:year], event[:month], event[:date])
      puts "Creating Event: #{name} @ #{start}."
      Event.create!(name: name, start: start)
    end
  end
end
