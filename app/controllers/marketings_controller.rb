class MarketingsController < ApplicationController

    def index
        # @collabs = Collab.all
        # 新着順(投稿日降順)に並ぶよう指定しています。
        @marketings = Marketing.all.order(created_at: :desc)
        @marketings = @marketings.page(params[:page]).per(6)
    end

    def new
        @marketing = Marketing.new
    end

    def show
      @marketing = Marketing.find(params[:id])
    end

    def create
        marketing = Marketing.new(marketing_params)
        if marketing.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def edit
        @marketing = Marketing.find(params[:id])
      end

      def update
        marketing = Marketing.find(params[:id])
        if marketing.update(marketing_params)
            redirect_to :action => "index", :id => marketing.id
        else
            redirect_to :action => "new"
        end
      end


      def destroy
        marketing = Marketing.find(params[:id])
        marketing.destroy
        redirect_to action: :index
      end
    
      private
      def marketing_params
        params.require(:marketing).permit(:event, :catch, :image, :images2, :images3, :images4, :images5, :overview, :url, :result)
      end


end