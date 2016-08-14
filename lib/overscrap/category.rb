class Category

  def initialize(category, nokogiri_doc)
    @category = category
    @nokogiri_doc = nokogiri_doc
    puts @category
  end

  def eliminations_average
    r = @nokogiri_doc.at_xpath('//*[@id="' + @category + '"]/section[1]/div/ul/li[1]/div/div[2]/h3/text()').to_s
    r.to_f
  end

  def damage_done_average
    r = @nokogiri_doc.at_xpath('//*[@id="' + @category + '"]/section[1]/div/ul/li[2]/div/div[2]/h3/text()').to_s
    r.delete(',').to_i # remove ',' like in 3,003,005
  end

  def deaths_average
    r = @nokogiri_doc.at_xpath('//*[@id="' + @category + '"]/section[1]/div/ul/li[3]/div/div[2]/h3/text()').to_s
    r.to_f
  end

  def healing_done_average
    r = @nokogiri_doc.at_xpath('//*[@id="' + @category + '"]/section[1]/div/ul/li[5]/div/div[2]/h3/text()').to_s
    r.to_i
  end

  # in seconds
  def objective_time_average
    r = @nokogiri_doc.at_xpath('//*[@id="' + @category + '"]/section[1]/div/ul/li[7]/div/div[2]/h3/text()').to_s
    duration = r.split(':')
    duration[0].to_i * 60 + duration[1].to_i
  end

  def final_blows_average
    r = @nokogiri_doc.at_xpath('//*[@id="' + @category + '"]/section[1]/div/ul/li[4]/div/div[2]/h3/text()').to_s
    r.to_f
  end

  def objective_kills_average
    r = @nokogiri_doc.at_xpath('//*[@id="' + @category + '"]/section[1]/div/ul/li[6]/div/div[2]/h3/text()').to_s
    r.to_f
  end

  def solo_kills_average
    r = @nokogiri_doc.at_xpath('//*[@id="' + @category + '"]/section[1]/div/ul/li[8]/div/div[2]/h3/text()').to_s
    r.to_f
  end
end