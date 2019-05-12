# frozen_string_literal: true

module CmsHelper
  def render_cms_path(path)
    previous = @cms_page
    if @cms_page = Comfy::Cms::Page.find_by(full_path: Pathname(previous.full_path).join(path).to_s)
      html = ERB.new(@cms_page.content_cache).result(binding).html_safe
    end
    @cms_page = previous

    html
  end

  def render_content_cache
    ERB.new(@cms_page.content_cache).result(binding).html_safe
  end

  def render_children_content_cache
    # prevent @cms_page from being changed
    previous = @cms_page
    html = @cms_page.children.order(:position).map do |cms_page|
      if cms_page.is_published?
        @cms_page = cms_page
        ERB.new(cms_page.content_cache).result(binding)
      end
    end.join('')
    @cms_page = previous

    html.html_safe
  end

  # append css of @cms_page's layout to the whole page
  def append_cms_css
    content_for :cms_assets, "<link href='#{comfy_cms_render_css_path @cms_page.site.id, @cms_page.layout.identifier}' rel='stylesheet'>".html_safe
  end

  # append js of @cms_page's layout to the whole page
  def append_cms_js
    content_for :cms_assets, "<script src='#{comfy_cms_render_js_path @cms_page.site.id, @cms_page.layout.identifier}' defer='defer'>".html_safe
  end

  def cms_slug
    @cms_page.slug
  end

  def cms_label
    @cms_page.label
  end
end

