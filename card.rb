require "./deck.rb"

class Card
  attr_reader :question, :answer, :options_array

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

end