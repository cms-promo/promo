module AdminHelper
  # Customized wrapper around ComfortableMexicanSofa::FormBuilder
  def admin_form_with(**options, &block)
    form_options = options.merge(builder: ComfortableMexicanSofa::FormBuilder)
    form_options[:local] = true
    bootstrap_form_with(**form_options, &block)
  end
end
