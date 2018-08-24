# frozen_string_literal: true

module AdminFormHeaderComponent
  extend ComponentHelper

  property :object, required: true

  def model_name
    @object.model_name
  end
end
