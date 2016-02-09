module ApplicationHelper

  # Gives the errors for a given field on an object
  # If ^ is added to the beginning of the error message the attribute name will not show in the error message
  def errors_for_field(object,field)
    if object.errors[field].length > 0
      "<div class='field_with_errors'><span class='help-block'>#{object.errors.full_messages_for(field).
          map{|message| message.split('^').last}.
          join('. ')}</span></div>".html_safe
    end
  end

end
