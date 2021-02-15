class QuestionsController < ApplicationController
  def ask
  end
  def answer
    # params es un hash con la key que yo le asigne el el form
    if params["question"].include? "?"
      # Necesito crear una variable de instancia para poder utilizarla en la view
      @answer = "Silly question, get dressed and go to work!"
    elsif params["question"] == "I am going to work right now!"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
