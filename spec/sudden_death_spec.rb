# -*- coding: utf-8 -*-
require  'sudden_death'

describe "sudden_death" do
  it "正常に実行出来る" do
    "突然の死".sudden_death.should == <<STR
＿人人人人人人＿
＞　突然の死　＜
￣ＹＹＹＹＹＹ￣
STR
  end

  it "改行を含む文字列の場合、フキダシが複数行に渡る" do
    "突然の死突然の死\n突然の死\n突然の死突然の死突然の死".sudden_death.should == <<STR
＿人人人人人人人人人人人人人人＿
＞　突然の死突然の死        　＜
＞　突然の死                　＜
＞　突然の死突然の死突然の死　＜
￣ＹＹＹＹＹＹＹＹＹＹＹＹＹＹ￣
STR
  end
end
