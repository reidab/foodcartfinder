class JQTouchFormBuilder < Formtastic::SemanticFormBuilder
  def basic_input_helper(form_helper_method, type, method, options) #:nodoc:
    options[:input_html] = (options[:input_html] || {}).reverse_merge(
                              :placeholder => label_text(method, options_for_label(options))
                            )
    super
  end

  # def check_box(method, options, checked_value, unchecked_value)
  #   template.content_tag(:span, super, :class => 'toggle')
  # end

  def label_text(method, options=nil)
    text = localized_string(method, text, :label) || humanized_attribute_name(method)
    text += required_or_optional_string(options.delete(:required))

    # special case for boolean (checkbox) labels, which have a nested input
    text = (options.delete(:label_prefix_for_nested_input) || "") + text
    text
  end

  def field_set_and_list_wrapping(*args, &block) #:nodoc:
    contents = args.last.is_a?(::Hash) ? '' : args.pop.flatten
    html_options = args.extract_options!

    legend  = html_options.delete(:name).to_s
    legend %= parent_child_index(html_options[:parent]) if html_options[:parent]
    legend  = template.content_tag(:legend, template.content_tag(:span, legend)) unless legend.blank?

    if block_given?
      contents = if template.respond_to?(:is_haml?) && template.is_haml?
        template.capture_haml(&block)
      else
        template.capture(&block)
      end
    end

    # Ruby 1.9: String#to_s behavior changed, need to make an explicit join.
    contents = contents.join if contents.respond_to?(:join)
    fieldset = template.content_tag(:fieldset,
      legend << template.content_tag(:ul, contents),
      html_options.except(:builder, :parent)
    )

    template.concat(fieldset) if block_given?
    fieldset
  end
end