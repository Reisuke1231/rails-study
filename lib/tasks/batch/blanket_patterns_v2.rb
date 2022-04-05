class Tasks::Batch::BlanketPatternsV2
  @@colors = 'RRGGBBYYKK'
  @@lines = 20
  def self.execute
    count = 0
    @@lines.times do |_i|
      first_half = @@colors[0]
      second_half = @@colors[1..-1]
      @@colors = second_half + first_half
      puts @@colors
    end
  end
end
