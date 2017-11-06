class QuestionsController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
   if question == "hello"
    "hello"
   elsif question.end_with?("?")
    "Silly question, get dressed and go to work!"
   else
    "I don't care, get dressed and go to work!"
   end
  end

  def ask
  end
end
