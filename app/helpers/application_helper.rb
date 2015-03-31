module ApplicationHelper
	# Notification Banner 
	def flash_class(level)
    case level
	    when :notice then "alert alert-info"
	    when :success then "alert alert-success"
	    when :error then "alert alert-danger"
	    when :alert then "alert alert-warning"
    end
	end
	# Dynamic Page Title
	def full_title(page_title)
		base_title = "PinApp"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
