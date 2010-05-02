# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def render_flash
    unless flash.blank?
      content_tag("div", :id => "flash", :class => "flash") do
        flash.keys.sort{|a,b| a.to_s <=> b.to_s }.map do |key|
          render_message(key, flash[key])
        end.join("\n")
      end
    end
  end

  def render_message(type, content, label = true)
    classes = ['message', type, (label ? 'with_label' : nil)]
    content_tag("div", :class => classes.compact.join(' ')) do
      (label ? content_tag(:span, type.to_s.titleize, :class => 'message_type') : '') << simple_format(content)
    end
  end
end
