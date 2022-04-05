class Tasks::Batch::BlanketPatternsV3
  @@colors = '++*~~*++*'
  @@lines = 20
  def self.execute
    colors_array = @@colors.split('')
    1.upto(@@lines) do |_i|
      first_half = colors_array.shift
      colors_array << first_half
      puts colors_array.join
    end
  end
end
