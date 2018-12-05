require 'pry'

input = File.readlines('input.txt').map(&:strip)

def main(input)
  two_count   = 0
  three_count = 0

  input.each do |line|
    counts = character_count(line)

    two_count   += 1 if counts.any? { |k,v| v == 2 }
    three_count += 1 if counts.any? { |k,v| v == 3 }
  end
  
  two_count * three_count
end


def character_count(line)
  line.chars.reduce({}) do |counts, char|
    if counts[char]
      counts[char] += 1
    else
      counts[char] = 1
    end

    counts
  end
end

puts main(input)
