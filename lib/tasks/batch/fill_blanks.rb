#!/usr/bin/env ruby
# rails runner Tasks::Batch::FillBlanks.execute

class Tasks::Batch::FillBlanks
  def self.execute
    puts '-' * 15
    puts '| Ruby Blanks |'
    puts '-' * 15

    blanks = %w[verb adjective noun adjective noun]

    vowels = %w[a e i o u]

    answers = blanks.map do |request|
      article = vowels.include?(request[0]) ? 'an' : 'a'
      print "Give me #{article} #{request}: "
      response = gets.chomp
    end

    text = "I decided to #{answers[0]} a #{answers[1]} #{answers[2]} for my #{answers[3]} #{answers[4]}."

    puts text
  end
end
