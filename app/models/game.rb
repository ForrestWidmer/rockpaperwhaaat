class Game
  include ActiveRecord::Validations

  attr_accessor :user

  validates :user, inclusion: {in: ["Rock", "Paper", "Scissors"], message: "%{value} is not a valid sign."}

  OPTIONS = ["Rock", "Paper", "Scissors"]
  
end