class Overview
  def initialize(nokogiri_doc)
    @nokogiri_doc = nokogiri_doc
  end

  def games_won
    r = @nokogiri_doc.at_xpath('//*[@id="overview-section"]/div/div[2]/div/div/p/span/text()').to_s
    r.split(' ').first.to_i
  end

  def competitive_rank
    r = @nokogiri_doc.at_xpath('//*[@id="overview-section"]/div/div[2]/div/div/div[3]/div[2]/div/text()').to_s
    r.to_i
  end

  def progression
    r = @nokogiri_doc.at_xpath('//*[@id="overview-section"]/div/div[2]/div/div/div[3]/div[1]/div/text()').to_s
    r.to_i
  end
end