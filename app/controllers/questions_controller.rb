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
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  def new
    @question = Question.new
  end

  def create
    @question =  Question.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      render 'new'
    end
  end

  private
    def question_params
      params.require(:question).permit(:title, :content).merge(user_id: current_user.id)
    end
end
