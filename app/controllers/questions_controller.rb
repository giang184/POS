class QuestionsController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new
    render :new
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.songs.new(question_params)
    if @question.save
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

  # Other controller actions go here.

  private
    def question_params
      params.require(:question).permit(:name, :question)
    end
end