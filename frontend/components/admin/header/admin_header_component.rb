# frozen_string_literal: true

module AdminHeaderComponent
  extend ComponentHelper

  property :model, required: true

  def model_name
    @model.model_name
  end

  def admin_models_path
    send "admin_#{model_name.name.tableize}_path"
  end

  def admin_new_path
    send "new_admin_#{model_name.name.downcase}_path"
  end
end
