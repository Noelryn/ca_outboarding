class Admin::LettersController < ApplicationController
	def index
		@members = User.member
  end

  def new
    @letter = Letter.new
  end

  def show
    @member = User.find(params[:id])
  end

  def create
    @letter = Letter.new(letter_params)
    if @letter.save
      redirect_to admin_letters_path, notice: "A new letter of recomendation has been created"
    else
      render 'new'
    end
  end

  private

  def letter_params
    params.require(:letter).permit(:title, :content, :user_id)
  end

end
