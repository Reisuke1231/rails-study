#!/usr/bin/env ruby
# rails runner Tasks::Batch::SortTips.***

class Tasks::Batch::SortTips
  @@numbers = [5, 8, 2, 6, 1, 3]
  def self.ascending
    x = @@numbers.sort {|v1, v2| v1 <=> v2 }
    print(x)
  end

  def self.descending
    x = @@numbers.sort {|v1, v2| v2 <=> v1 }
    print(x)
  end

  @@fruits = ['apple', 'banana', 'pear']
  def self.length_short
    x = @@fruits.sort {|fruit1, fruit2| fruit1.length <=> fruit2.length }
    print(x)
  end

  def self.sort_by
    x = @@fruits.sort_by {|fruit| fruit.length }
    print(x)
  end

  @@hashes = {a: 4, c: 5, b: 3}
  def self.hash_sort_by_key
    x = @@hashes.sort {|p1, p2| p1[0] <=> p2[0]}
    print(x)
  end

  def self.hash_sort_by_value
    x = @@hashes.sort {|p1, p2| p1[1] <=> p2[1]}
    print(x)
  end
end