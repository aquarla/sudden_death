# -*- coding: utf-8 -*-
require "sudden_death/version"
require "sudden_death/sudden_death"

class String
  def sudden_death
    SuddenDeath::sudden_death(self)
  end
end
