namespace :data do

  def get_dates(team)
    dates = Hash.new
    team.each do |date|
      dates[date[0]] = DateTime.new(date[1][:year], date[1][:month], date[1][:date])
    end
    dates
  end

  desc 'Create MLB teams'
  task create_teams: :environment do

    puts "Deleting #{Team.delete_all} Events."

    teams = [
      { name:   'Arizona Diamondbacks',
        league: 'NL',
        pitchers_and_catchers:       { year: 2014, month: 2, date: 6  },
        first_workout:               { year: 2014, month: 2, date: 7  },
        position_players:            { year: 2014, month: 2, date: 11 },
        first_full_workout:          { year: 2014, month: 2, date: 12 },
        spring_training_opener:      { year: 2014, month: 2, date: 26 },
        spring_training_home_opener: { year: 2014, month: 2, date: 26 },
        opener:                      { year: 2014, month: 3, date: 31 },
        home_opener:                 { year: 2014, month: 3, date: 31 },
        last_home_game:              { year: 2014, month: 9, date: 28 },
        last_game:                   { year: 2014, month: 9, date: 28 }
      }
    ]
    teams.each do |team|
      _, name   = team.shift
      _, league = team.shift

      dates           = get_dates(team)
      new_team        = Team.new(dates)
      new_team.name   = name
      new_team.league = league

      puts "Creating: #{name}."
      new_team.save!
    end
  end
end
