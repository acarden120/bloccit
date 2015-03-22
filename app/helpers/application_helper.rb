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

  def will_paginate(collection_sym)
    collection = collection_sym.to_s.capitalize.singularize.constantize.all

    name = collection_sym.to_s.downcase

    html = '' 

    html << "<ul class=\"#{name}-list\">"

    for member in collection do
      html << content_tag(:li, :id => member.title.gsub(' ', '-').downcase.strip) do
       concat content_tag(:h1, member.title, :class => "#{name}-title")
       concat link_to 'Edit', "/#{name}/#{member.id}/edit"
       concat "\|"
       concat link_to 'View', "/#{name}/#{member.id}"
       concat "\|"
       concat button_to 'Delete', "/#{name}/#{member.id}", :confirm => 'Are you sure?  This cannot be undone.', :method => :delete
      end
     end

     html << '</ul>'

   return html
  end 

end