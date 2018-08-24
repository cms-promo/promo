# frozen_string_literal: true

module AdminShowComponent
  extend ComponentHelper

  property :object, required: true

  def model_name
    @object.model_name
  end

  def admin_models_path
    send "admin_#{model_name.name.tableize}_path"
  end

  def admin_new_path
    send "new_admin_#{model_name.name.downcase}_path"
  end

  def admin_edit_path(id)
    send "edit_admin_#{model_name.name.downcase}_path", id
  end
end
