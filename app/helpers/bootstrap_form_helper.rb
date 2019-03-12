# frozen_string_literal: true

module BootstrapFormHelper
  def errors_for(form, field)
    content_tag(:p, form.object.errors[field].try(:first), class: 'form-text text-muted')
  end

  def form_group_for(form, field, opts = {}, &block)
    label = opts.fetch(:label) { true }
    has_errors = form.object.errors[field].present?

    content_tag :div, class: 'form-group' do
      concat form.label(field, class: 'form-label') if label
      concat capture(has_errors, &block)
      concat errors_for(form, field)
    end
  end
end
