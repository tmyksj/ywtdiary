class YwtsController < ApplicationController
  before_action(:authenticate_user!)

  def index
    @ywts = current_user.ywts.order(created_at: :desc)
  end

  def new
    @ywt = Ywt.new
  end

  def create
    @ywt = Ywt.new(ywt_params)
    @ywt.user = current_user

    if @ywt.save
      redirect_to(action: :index, controller: :dashboard)
    else
      render(:new)
    end
  end

  private

  def ywt_params
    params.require(:ywt).permit(:y, :w, :t)
  end
end
