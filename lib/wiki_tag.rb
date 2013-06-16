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
    # "#{greeting} TDD BootCamp!"
  end
end
