#!/usr/bin/env ruby
# rails runner Tasks::Batch::MergeTips.***

class Tasks::Batch::MergeTips
  @@h1 = {a: 2, b: 4, c: 6}
  @@h2 = {a: 3, b: 4, d: 8}
  def self.usual_overwrite
    x = @@h1.merge(@@h2)
    y = @@h2.merge(@@h1)
    puts(x)
    puts(y)
  end

  def self.overwrite_by_new
    x = @@h1.merge(@@h2) {|key, old, new| new}
    puts(x)
  end

  def self.overwrite_by_old
    x = @@h1.merge(@@h2) {|key, old, new| old}
    puts(x)
  end

  def self.overwrite_by_smaller
    x = @@h1.merge(@@h2) {|key, old, new| old < new ? old : new}
    puts(x)
  end

  def self.overwrite_by_multiplied
    x = @@h1.merge(@@h2) {|key, old, new| old * new}
    puts(x)
  end
end