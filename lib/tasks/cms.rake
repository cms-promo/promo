# frozen_string_literal: true

namespace :cms do
  task :import, :site_slug do |_t, args|
    sh "bin/rails 'comfy:cms_seeds:import[#{args[:site_slug]}, #{args[:site_slug]}]'"
  end

  task :export, :site_slug do |_t, args|
    sh "bin/rails 'comfy:cms_seeds:export[#{args[:site_slug]}, #{args[:site_slug]}]'"
  end
end
