desc "Remove Watches older than a month"
task :remove_old_arduino_watchers => :environment do
  Watcher.delete_all ["created_at > ?", 30.days.ago]
end