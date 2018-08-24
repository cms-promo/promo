# frozen_string_literal: true

module AdminFormOperationsComponent
  extend ComponentHelper

  property :form, required: true

  def model_name
    @form.object.model_name
  end

  def admin_models_path
    send "admin_#{model_name.name.tableize}_path"
  end

end
