module ApplicationHelper
  def striped_tr(*my_strings)
    rv="<tr class=#{stripe}>\n".html_safe
    my_strings.each do |a_string|
      rv << "  <td>#{h a_string || ''}</td>\n".html_safe
    end
    rv << "</tr>\n".html_safe
    return rv
  end
end
