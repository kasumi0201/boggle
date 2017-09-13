DICE = ["AAEEGN","ELRTTY","AOOTTW","ABBJOO","EHRTVW","CIMOTU","DISTTY","EIOSST","DELRVY","ACHOPS","HIMNQU","EEINSU","EEGHNW","AFFKPS","HLNNRZ","DEILRX"]




class BoggleBoard
  # attr_accessor :space ,:alphabet
  def initialize
    @space = Array.new(16,"_")
    @alphabet =("A".."Z").to_a
    # b = "Q" # ここがすでにある値の場合
@alphabet = @alphabet - ["Q"] # -記号で要素を削除
@alphabet = @alphabet + ["Qu"]
  end
#what does it do

  def shake!
#take spaces
#replace item with ramdom letters(prob good idea to create a var for this)
#split it into our board
#call the shake! method without BoggleBoard class
#could use MAP
# ==========================
# output_string = String.new
# second_array = @newalphabet
# # 4.times do
# output_string << second_array.sort_by { rand }.shift(4).join('　') + ("\n")
# output_string2 << second_array.sort_by { rand }.shift(4).join('　') + ("\n")

# end
# puts output_string
#
# puts output_string [0]
# puts output_string2 [2]
# ==========================

# ==========================

@space.map! do | space |
  space = @alphabet.shuffle.take(1)
end

  # ==========================

  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    # "omg what is this? try printing me."
output_string = String.new
output_string = @space[0..3].join(' ')+"\n"
output_string = output_string + @space[4..7].join(' ')+"\n"
output_string = output_string + @space[8..11].join(' ')+"\n"
output_string = output_string + @space[12..15].join(' ')+"\n"

# 4.times do
# output_string << letter_array.shift(4).join('　') + ("\n")
#
#   end
puts output_string
  end
end

board = BoggleBoard.new
puts board
board.shake!
puts board
# puts output_string
