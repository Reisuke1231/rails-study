#!/usr/bin/env ruby
# rails runner Tasks::Batch::SortTips.***

class Tasks::Batch::SortTips
  @@numbers = [5, 8, 2, 6, 1, 3]
  def self.ascending
    x = @@numbers.sort
    print(x)
  end

  def self.descending
    x = @@numbers.sort.reverse
    print(x)
  end

  @@fruits = %w[apple banana pear]
  def self.length_short
    x = @@fruits.sort_by(&:length)
    print(x)
  end

  def self.sort_by
    x = @@fruits.sort_by { |fruit| fruit.length }
    print(x)
  end

  @@hashes = { a: 4, c: 5, b: 3 }
  def self.hash_sort_by_key
    x = @@hashes.sort_by { |a| a[0] }
    print(x)
  end

  def self.hash_sort_by_value
    x = @@hashes.sort_by { |a| a[1] }
    print(x)
  end
end
