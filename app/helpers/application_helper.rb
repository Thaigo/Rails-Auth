module ApplicationHelper
  def status_label status
    status_span_generator status
  end

  def status_span_generator status
    case status
      when 'submitted'
       content_tag(:span, status.titleize, class: "blue-text text-darken-4")
      when 'approved'
       content_tag(:span, status.titleize, class: "green-text text-darken-4")
      when 'rejected'
       content_tag(:span, status.titleize, class: "red-text text-darken-4")    
       
    end
  end
end
