def preprends_motivation(your_message)
  if your_message[-1] == "?"
    @answer = "I can feel your motivation! Silly question, get dressed and go to work!"
  else
    @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!

  if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
    @answer = ""
  elsif your_message == your_message.upcase
    preprends_motivation(your_message)
  elsif your_message[-1] == "?"
    @answer = "Silly question, get dressed and go to work!"
  else
    @answer = "I don't care, get dressed and go to work!"
  end
end

class QuestionsController < ApplicationController
  def ask
    question
  end

  def answer
    question = params[:question]
    coach_answer_enhanced(question)
  end
end
