class QuestionsController < ApplicationController
    def index
        @questions = Question.all
    end

    def submit_answer
        @question = Question.new(question_params)

        if @question.valid?
            check_answer_logic(@question)
        else
            render :index
        end
    end

    def submit_answer
        @question = Question.find(params[:id])
        correct_answer = @question.hint
        user_submitted_answer = params[:user_answer]
    
        if user_submitted_answer == correct_answer
          # Correct answer logic
          flash[:success] = "✔ Excellent"
          # ... (e.g., update scores, redirect to next question)
        else
          # Incorrect answer logic
          flash[:error] = "Sorry, incorrect..."
          # ... (e.g., show feedback, allow re-attempt)
        end
    
        redirect_to questions_path
    end

    private
    def question_params
        params.require(:question).permit(:question, :option1, :option2, :option3, :option4, :hint)
    end
end
