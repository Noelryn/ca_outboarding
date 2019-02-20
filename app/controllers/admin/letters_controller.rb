class Admin::LettersController < ApplicationController
	def index
		@members = User.member
  end

  def new
    @letter = Letter.new
  end

  def create
    @member = User.find(params[:user_id])
    @member.letter.create(params.require(:letter).permit(:title, :content, :user_id))

    if @letter.save
      redirect_to admin_letters_path
      flash[:notice] = "A new letter of recomendation has been created"
    else
      render 'new'
    end
  end


end
