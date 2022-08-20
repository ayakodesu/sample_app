class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    list = List.new(list_params)
    list.save
     redirect_to list_path(list.id)
  end


  private
  #
  def list_params
    params.require(:list).permit(:title, :body)
  end

end