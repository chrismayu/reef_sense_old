
# lib/tasks/delete_old_records.rake
namespace :delete do
  desc 'Delete records older than 60 days'
  task :old_records => :environment do
    Watcher.where('created_at > ?', 90.days.ago).each do |model|
      model.destroy
    end

    # or Model.delete_all('created_at > ?', 60.days.ago) if you don't need callbacks
  end
end
