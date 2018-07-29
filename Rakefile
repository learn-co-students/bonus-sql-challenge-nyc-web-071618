require_relative 'config/environment'

desc 'starts a console'
task :console do
  puts guest_with_most_appearances
  Pry.start
end

desc "re-import the data into databae"
task :build do
  DB.execute("delete from guests")
  require_relative './db/seed'
end
