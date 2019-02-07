class Admin::LettersController < ApplicationController
	def index
		@members = User.member
  end

  def new
  end

  def create
    @member = user.find(params[:user_id])
    @member.letters.create(params.require(:letter).permit(:title, :content))
    redirect_to admin_path
  end

end
