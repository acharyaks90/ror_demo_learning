class QuestionsController < ApplicationController
     before_action :set_question, only: [:show, :edit, :update, :destroy] 
    def index
       
        @questions = Question.all
        end
    
    def new
        @question = Question.new
    end 
    def create 
        @question = Question.new(question_params)
        @question.user = current_user
        respond_to do |format|
            if @question.save
                format.html { redirect_to @question, notice: 'Question created!'}
            else
                format.html { render :new}
            end
        end
    end

    def show

    end

    def edit

    end 

    def destroy
        @question.destroy
        respond_to do |format|
            format.html { redirect_to @question, notice: 'Question Deleted' }
        end
    end 

    def update
        respond_to do |format|
            if @question.update(question_params)
                format.html { redirect_to @question, notice: 'Question updated!'}
            else
                format.html { render :edit}
            end
        end
    end 

    def set_question
        @question = Question.find(params[:id])
    end 
    def question_params
        params.require(:question).permit(:title, :description)
    end 

  
end