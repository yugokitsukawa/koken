class InsidesController < ApplicationController

  def index
    # @collabs = Collab.all
    # 新着順(投稿日降順)に並ぶよう指定しています。
    @insides = Inside.all.order(created_at: :desc)
    @insides = @insides.page(params[:page]).per(6)
end

def new
    @inside = Inside.new
end

def show
  @inside = Inside.find(params[:id])
end

def create
  inside = Inside.new(inside_params)
    if inside.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def edit
    @inside = Inside.find(params[:id])
  end

  def update
    inside = Inside.find(params[:id])
    if inside.update(inside_params)
        redirect_to :action => "index", :id => inside.id
    else
        redirect_to :action => "new"
    end
  end


  def destroy
    inside = Inside.find(params[:id])
    inside.destroy
    redirect_to action: :index
  end

  private
  def inside_params
    params.require(:inside).permit(:event, :catch, :image, :images2, :images3, :images4, :images5, :overview, :url)
  end


end
