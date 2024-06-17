class OffsController < ApplicationController

    def index
        # @offs = Off.all
        # 新着順(投稿日降順)に並ぶよう指定しています。
        @offs = Off.all.order(created_at: :desc)
        @offs = @offs.page(params[:page]).per(6)
    end

    def new
        @off = Off.new
    end

    def show
      @off = Off.find(params[:id])
    end

    def create
        off = Off.new(off_params)
        if off.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def edit
        @off = Off.find(params[:id])
      end

      def update
        off = Off.find(params[:id])
        if off.update(off_params)
          redirect_to :action => "index", :id => off.id
        else
          redirect_to :action => "new"
        end
      end


      def destroy
        off = Off.find(params[:id])
        off.destroy
        redirect_to action: :index
      end
    
      private
      def off_params
        params.require(:off).permit(:event, :catch, :image, :image2, :image3, :image4, :image5, :overview)
      end

end
