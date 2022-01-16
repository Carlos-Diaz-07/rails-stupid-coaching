# frozen_string_literal: true

# question controller
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question]
    coach_answer_enhanced(question)
  end

  private

  def preprends_motivation(your_message)
    if your_message[-1] == '?'
      'I can feel your motivation! Silly question, get dressed and go to work!'
    else
      'I can feel your motivation! I don`t care, get dressed and go to work!'
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules!
    @answer = if your_message.upcase == 'I AM GOING TO WORK RIGHT NOW!'
                ''
              elsif your_message == your_message.upcase
                preprends_motivation(your_message)
              elsif your_message[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                'I don`t care, get dressed and go to work!'
              end
  end
end
