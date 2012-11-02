# -*- coding: utf-8 -*-

module SuddenDeath
  def self.sudden_death(text)
    hankaku_count = text.split(//).count {|c| c.ascii_only? }
    text_width = hankaku_count + (text.size - hankaku_count) * 2
    top = "人" * (text_width / 2)
    bottom = "Ｙ" * (text_width / 2)

    <<"SUDDENDEATH"
＿人#{top   }人＿
＞　#{text  }　＜
￣Ｙ#{bottom}Ｙ￣
SUDDENDEATH
  end
end
