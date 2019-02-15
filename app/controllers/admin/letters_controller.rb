class Admin::LettersController < ApplicationController
	def index
		@members = User.member
  end

  def new
    @letter = Letter.new
  end

  def create
    @member = User.find(params[:user_id])
    @member.letter.create(params.require(:letter).permit(:title, :content))

    if @letter.save
      redirect_to admin_letters_path
    else
      render 'new'
    end
  end

  # def show 
  #   @letter = Letter.find(params[:user_id])
  # end

end
