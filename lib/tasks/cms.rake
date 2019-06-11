# frozen_string_literal: true

namespace :cms do
  task :import, [:site_slug] do |_t, args|
    Rake::Task['comfy:cms_seeds:import'].invoke(args[:site_slug], args[:site_slug])
  end

  task :export, [:site_slug] do |_t, args|
    Rake::Task['comfy:cms_seeds:export'].invoke(args[:site_slug], args[:site_slug])
  end

  task hosts: :environment do
    puts Comfy::Cms::Site.order(:id).pluck(:hostname).join(',')
  end
end
