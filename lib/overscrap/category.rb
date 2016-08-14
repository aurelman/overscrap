class Category

  def initialize(sub_doc)
    @sub_doc = sub_doc
  end

  def eliminations_avg
    nth(1).text.to_f
  end

  def damage_done_avg
    # remove ',' like in 3,003,005
    nth(2).text.delete(',').to_i
  end

  def deaths_avg
    nth(3).text.to_f
  end

  def final_blows_avg
    nth(4).text.to_f
  end

  def healing_done_avg
    nth(5).text.to_i
  end

  def objective_kills_avg
    nth(6).text.to_f
  end

  # in seconds
  def objective_time_avg
    durations = nth(7).text.split(':')
    durations[0].to_i * 60 + durations[1].to_i
  end

  def solo_kills_avg
    nth(8).text.to_f
  end

  private
  # Returns the n-th element (considering current sub_doc is a <ul> list)
  def nth(number)
    @sub_doc.at_xpath("./li[#{number}]/div/div[2]/h3")
  end
end
