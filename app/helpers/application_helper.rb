module ApplicationHelper
  def modal(heading, options = {}, &block)
    close_button = content_tag(:button, '&times;'.html_safe, class: 'close', data: { dismiss: 'modal' })
    heading = content_tag(:h4, heading, class: 'modal-title')
    header = content_tag(:div, close_button + heading, class: 'modal-header')
    body = content_tag(:div, capture(&block), class: 'modal-body')
    content_tag(:div,
                content_tag(:div,
                            content_tag(:div,
                                        header + body,
                                        class: 'modal-content'),
                                        class: ['modal-dialog', options[:size]]),
                {class: 'modal'}.merge(options))
  end
end
