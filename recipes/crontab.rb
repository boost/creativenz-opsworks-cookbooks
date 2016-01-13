cron_env = {"PATH" => "/usr/local/bin:$PATH"}

cron "funding_opportunity:update_statuses" do
  minute "15"
  hour "0"
  user "deploy"
  #mailto "blackadmin@3months.com"
  command "cd /srv/www/draft/current && bundle exec rake funding_opportunity:update_statuses"
end

cron "sitemap:refresh" do
  minute "0"
  hour "5"
  user "deploy"
  #mailto "blackadmin@3months.com"
  command "cd /srv/www/draft/current && bundle exec rake sitemap:refresh && cd /srv/www/published/current && bundle exec rake sitemap:refresh"
end

