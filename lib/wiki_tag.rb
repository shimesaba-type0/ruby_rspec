# -*- encoding: utf-8 -*-

class WikiTag
  def change_italic(string)
    if string =~ /^\_*\_/
      string.gsub!(/^\_/,'')
      string.gsub!(/\_$/,'')
      
      if string.empty?
        return ""
      else
        "<i>"+ string + "</i>"
      end
    end

  end
  def change_bold(string)
    if string =~ /^\**\*/
      string.gsub!(/^\*/,'')
      string.gsub!(/\*$/,'')
      
      if string.empty?
        return ""
      else
        "<strong>"+ string + "</strong>"
      end
    end
  end
end
