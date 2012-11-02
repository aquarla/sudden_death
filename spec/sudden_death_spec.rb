# -*- coding: utf-8 -*-
require  'sudden_death'

describe "sudden_death" do
  it "正常に実行出来る" do
    "突然の死".sudden_death.should == <<STR
＿人人人人人人＿
＞　突然の死　＜
￣^Y^Y^Y^Y^￣
STR
  end
end
