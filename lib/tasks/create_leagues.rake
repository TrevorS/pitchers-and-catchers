namespace :data do
  desc 'Create MLB leagues'
  task create_leagues: :environment do

    puts "Deleting #{League.delete_all} Leagues."
    p League.create!(name: 'American League')
    p League.create!(name: 'National League')
  end
end
