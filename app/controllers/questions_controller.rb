class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @current_user = current_user
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def new
  end
end
