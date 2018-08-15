class Admin::Entry::Cell < Cell::Concept
  view_paths << "#{Promo::Engine.root}/app/concepts"

  include ActionView::Helpers::TranslationHelper

  property :id

  def model_name
    model.model_name
  end

  def admin_models_path
    send "admin_#{model_name.name.tableize}_path"
  end

  def admin_new_path
    send "new_admin_#{model_name.name.downcase}_path"
  end

  def admin_show_path(_id)
    send "admin_#{model_name.name.downcase}_path", _id
  end

  def admin_edit_path(_id)
    send "edit_admin_#{model_name.name.downcase}_path", _id
  end

  alias_method :admin_destroy_path, :admin_show_path

  def show
    render
  end

  def form_head
    render
  end

  cache :index_head do
    model.model_name
  end

  def index_head
    render
  end

  def operations
    render
  end

end
