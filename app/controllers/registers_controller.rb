class RegistersController < ApplicationController
  before_action :logged_in_user

  def new
    @register = Register.new
    @category = Category.all
    @management = Management.all
  end

  def create
    @register = Register.new(register_params)
    @category = Category.all
    @management = Management.all
    if @register.save
      flash[:success] = "アニメの登録が完了しました!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @register = Register.find(params[:id])
  end

  def edit
    @register = Register.find(params[:id])
    @category = Category.all
    @management = Management.all
  end

  def update
    @register = Register.find(params[:id])
    @category = Category.all
    @management = Management.all
    if @register.update_attributes(register_params)
      flash[:success] = "アニメの登録が更新されました"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @register = Register.find(params[:id]).destroy
    flash[:success] = "アニメの登録を削除しました"
    redirect_to users_url
  end

  private

    def register_params
      params.require(:register).permit(:title, :image, :period,:category_id, :management_id,:content).merge(user_id: current_user.id)
    end

end
