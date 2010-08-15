# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def ip_format_check(ip_str)
      if ip_str =~ /\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/
        return true
      elsif ip_str == ""
          return true
      else
        return false
      end
  end
end
