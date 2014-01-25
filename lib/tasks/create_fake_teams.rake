namespace :data do

  def random_date(from = Time.now, to = 90)
    from + rand(to).days
  end

  def generate_team(name, league)
    pitchers_and_catchers       = random_date
    first_workout               = pitchers_and_catchers + 2.days
    position_players            = pitchers_and_catchers + 4.days
    first_full_workout          = pitchers_and_catchers + 6.days
    spring_training_opener      = pitchers_and_catchers + 10.days
    spring_training_home_opener = pitchers_and_catchers + 11.days
    opener                      = pitchers_and_catchers + 40.days
    home_opener                 = pitchers_and_catchers + 41.days
    last_home_game              = pitchers_and_catchers + 200.days
    last_game                   = pitchers_and_catchers + 201.days

    p t = league.teams.create!(name: name)
    t.events.create!(name: 'Pitchers and Catchers', scheduling: pitchers_and_catchers)
    t.events.create!(name: 'First Workout', scheduling: first_workout)
    t.events.create!(name: 'Position Players', scheduling: position_players)
    t.events.create!(name: 'First Full Workout', scheduling: first_full_workout)
    t.events.create!(name: 'Spring Training Opener', scheduling: spring_training_opener)
    t.events.create!(name: 'Spring Training Home Opener', scheduling: spring_training_home_opener)
    t.events.create!(name: 'Opener', scheduling: opener)
    t.events.create!(name: 'Home Opener', scheduling: home_opener)
    t.events.create!(name: 'Last Home Game', scheduling: last_home_game)
    t.events.create!(name: 'Last Game', scheduling: last_game)
  end

  desc 'Create MLB teams with fake data'
  task create_fake_teams: :environment do

    al_teams = ['Baltimore Orioles',
                'Boston Red Sox',
                'Chicago White Sox',
                'Cleveland Indians',
                'Detroit Tigers',
                'Houston Astros',
                'Kansas City Royals',
                'Los Angeles Angels of Anaheim',
                'Minnesota Twins',
                'New York Yankees',
                'Oakland A\'s',
                'Seattle Mariners',
                'Tampa Bay Devil Rays',
                'Texas Rangers',
                'Toronto Blue Jays'
    ]


    nl_teams = ['Arizona Diamondbacks',
                'Atlanta Braves',
                'Chicago Cubs',
                'Cincinnati Reds',
                'Colorado Rockies',
                'Florida Marlins',
                'Los Angeles Dodgers',
                'Milwaukee Brewers',
                'New York Mets',
                'Philadelphia Phillies',
                'Pittsburgh Pirates',
                'San Diego Padres',
                'San Francisco Giants',
                'St. Louis Cardinals',
                'Washington Nationals'
    ]

    puts "Deleting all #{Team.delete_all} Teams."
    puts "Deleting all #{Event.delete_all} Events."

    al_teams.each do |team|
      al = League.where(name: 'American League').first
      generate_team(team, al)
    end

    nl_teams.each do |team|
      nl = League.where(name: 'National League').first
      generate_team(team, nl)
    end
  end
end
