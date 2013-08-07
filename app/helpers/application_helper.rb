module ApplicationHelper
  # Stolen from devise_error_messages!
  def error_messages_for(model)
    return "" if model.errors.empty?

    messages = model.errors.inject({}) do |memo, (prop, issue)|
      memo[prop] ||= issue
      memo
    end.map do |prop, issue|
      content_tag(:li, model.errors.full_message(prop, issue))
    end

    sentence = I18n.t("errors.messages.unsaved",
                      :count => messages.count,
                      :model => model.class.model_name.human.downcase)

    html = <<-HTML
    <div id="error_explanation">
      <h2>#{sentence}</h2>
      <ul>#{messages.join}</ul>
    </div>
    HTML

    html.html_safe
  end

end
