namespace :dm do
  namespace :auto do
    # task :migrate => :environment do
    task :migrate do
      DataMapper.auto_migrate!
    end

    task :upgrade => :environment do
      DataMapper.auto_upgrade!
    end
  end
end
