module ApplicationHelper

  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

  def markdown_to_html(markdown)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render markdown).html_safe
  end

  public 

  def down_vote_link_classes(post)
    str_link = "glyphicon glyphicon-chevron-down "
    vote = current_user.voted(post)
    str_link += "voted" if vote && vote.down_vote?
    return str_link
  end

  public 
  def up_vote_link_classes(post)
    str_link = "glyphicon glyphicon-chevron-up voted "
    vote = current_user.voted(post)
    str_link += "voted" if vote && vote.up_vote?
    return str_link    
  end

end