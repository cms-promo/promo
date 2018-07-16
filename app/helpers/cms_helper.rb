# frozen_string_literal: true

module CmsHelper
  def render_content_cache
    return ERB.new(@cms_page.content_cache).result(binding).html_safe
  end

  def render_children_content_cache
    # prevent @cms_page from being changed
    previous = @cms_page
    html = @cms_page.children.order(:position).map { |cms_page|
      @cms_page = cms_page
      ERB.new(cms_page.content_cache).result(binding)
    }.join('')
    @cms_page = previous

    return html.html_safe
  end

  # append css of @cms_page's layout to the whole page
  def cms_append_css
    content_for :cms_css, "<link href='#{ comfy_cms_render_css_path @cms_page.site.id, @cms_page.layout.identifier }' rel='stylesheet'>".html_safe
  end

  # append js of @cms_page's layout to the whole page
  def cms_append_js
    content_for :cms_js,  "<link href='#{ comfy_cms_render_js_path  @cms_page.site.id, @cms_page.layout.identifier }' rel='stylesheet'>".html_safe
  end

  def cms_slug
    @cms_page.slug
  end

  def cms_label
    @cms_page.label
  end
end
