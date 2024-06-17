class CollabsController < ApplicationController

    def index
        # @collabs = Collab.all
        # 新着順(投稿日降順)に並ぶよう指定しています。
        @collabs = Collab.all.order(created_at: :desc)
        @collabs = @collabs.page(params[:page]).per(6)
    end

    def new
        @collab = Collab.new
    end

    def show
      @collab = Collab.find(params[:id])
    end

    def create
        collab = Collab.new(collab_params)
        if collab.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def edit
        @collab = Collab.find(params[:id])
      end

      def update
        collab = Collab.find(params[:id])
        if collab.update(collab_params)
          redirect_to :action => "index", :id => collab.id
        else
          redirect_to :action => "new"
        end
      end



      def destroy
        collab = Collab.find(params[:id])
        collab.destroy
        redirect_to action: :index
      end
    
      private
      def collab_params
        params.require(:collab).permit(:event, :company, :image, :images2, :images3, :images4, :images5, :overview, :url)
      end

end
