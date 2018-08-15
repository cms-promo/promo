class Admin::Form::Cell < Cell::Concept
  view_paths << "#{Promo::Engine.root}/app/concepts"
  include ActionView::Helpers::TranslationHelper

  property :object

  def admin_models_path
    "/admin/#{model.object.class.name.tableize}"
  end

  def operations
    render
  end
end
