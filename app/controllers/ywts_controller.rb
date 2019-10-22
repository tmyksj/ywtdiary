class YwtsController < ApplicationController
  before_action :authenticate_user!

  def new
    @ywt = Ywt.new
  end

  def create
    @ywt = Ywt.new(ywt_params)
    @ywt.user = current_user

    if @ywt.save
      redirect_to(controller: :dashboard, action: :index)
    else
      render(:new)
    end
  end

  private

  def ywt_params
    params.require(:ywt).permit(:y, :w, :t)
  end
end
