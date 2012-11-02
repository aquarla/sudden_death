# -*- coding: utf-8 -*-

module SuddenDeath
  def self.sudden_death(text)
    lines = text.each_line.to_a.collect{|line| line.chomp }
    max_width = lines.collect{|line| text_width(line)}.max

    top = "人" * (max_width / 2)
    middle = lines.collect{|line|
      "＞　#{line + (" " * (max_width - text_width(line)))}　＜"
    }.join("\n")
    bottom = "Ｙ" * (max_width / 2)

    <<"SUDDENDEATH"
＿人#{top   }人＿
#{middle}
￣Ｙ#{bottom}Ｙ￣
SUDDENDEATH
  end

  def self.text_width(line)
    hankaku_count = line.split(//).count {|c| c.ascii_only? }
    hankaku_count + (line.size - hankaku_count) * 2
  end
end
