# frozen_string_literal: true

module AdminListItemOperationsComponent
  extend ComponentHelper

  property :object, required: true

  def model_name
    @object.model_name
  end

  def admin_edit_path(id)
    send "edit_admin_#{model_name.name.downcase}_path", id
  end

  def admin_show_path(id)
    send "admin_#{model_name.name.downcase}_path", id
  end
end
