class Tasks::Batch::BlanketPatternsFancy
  @@colors = '=|/|/|=|/|'
  @@lines = 20
  @@halfway = (@@lines / 2).floor
  def self.execute
    colors_array = @@colors.split('')
    1.upto(@@halfway) do
      first_half = colors_array.shift
      colors_array << first_half
      puts colors_array.join
    end

    colors_array.length.times do |x|
      colors_array[x] = '\\' if colors_array[x] == '/'
    end
    puts colors_array.join

    @@halfway.upto(@@lines) do
      last_half = colors_array.pop
      colors_array.unshift(last_half)
      puts colors_array.join
    end
  end
end
