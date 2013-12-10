module StudentsHelper

  def shorten_bio bio
    #word_wrap(bio, line_width: 40).gsub("\n", '<br/>').html_safe
    #truncate(bio, length: 40)
  end

  def shorten_bio bio
    truncate(bio,length:40).gsub("...",long_bio_tooltip(bio)).html_safe 
  end 

  def long_bio_tooltip bio 
    "<a title='#{bio.gsub("'","&apos;")}'>[+]</a>".html_safe 
  end

end
