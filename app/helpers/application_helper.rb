module ApplicationHelper
  def render_markdown(text)
    return '' unless text

    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new)
    markdown.render(text).html_safe
  end
end
