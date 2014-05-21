class GamesController < ApplicationController
  def new
  end

  def throw
    user_sign = params[:user]
    robot_sign = Game::OPTIONS.sample

    if user_sign == "Rock" && robot_sign == "Scissors"
      redirect_to games_win_path
    elsif user_sign == "Paper" && robot_sign == "Rock"
      redirect_to games_win_path
    elsif user_sign == "Scissors" && robot_sign == "Paper"
      redirect_to games_win_path
    elsif user_sign == robot_sign
      redirect_to games_tie_path
    else
      redirect_to games_lose_path
    end
  end

  def win
  end

  def lose
  end

  def tie
  end
end
