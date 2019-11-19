class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]
    unless params[:question].nil?
      if params[:question] == "I am going to work"
        @answer =  'Great!'
      elsif params[:question].include?("?")
        @answer = "Silly question, get dressed and go to work!."
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
