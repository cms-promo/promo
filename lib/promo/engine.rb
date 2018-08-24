module Promo
  class Engine < ::Rails::Engine
    config.after_initialize do |app|
      app.config.komponent.component_paths.append(Promo::Engine.root.join("frontend/components"))
    end

    initializer "promo.action_dispatch" do |app|
      ActiveSupport.on_load :action_controller do
        ActionController::Base.prepend_view_path Promo::Engine.root.join("frontend")
      end
    end

    initializer 'promo.autoload', before: :set_autoload_paths do |app|
      app.config.autoload_paths << Promo::Engine.root.join("frontend")
    end
  end

private

  def self.root
    Pathname.new(File.dirname(__dir__))
  end
end
