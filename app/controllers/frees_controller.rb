class FreesController < ApplicationController

    def index
        @frees = Free.all.order(created_at: :desc)
        @frees = @frees.page(params[:page]).per(3)
    end

    def new
        @free = Free.new
    end

    def create
        free = Free.new(free_params)
        if free.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @free = Free.find(params[:id])
      end

      def edit
        @free = Free.find(params[:id])
      end

      def update
        free = Free.find(params[:id])
        if free.update(free_params)
          redirect_to :action => "index", :id => free.id
        else
          redirect_to :action => "new"
        end
      end


      def destroy
        free = Free.find(params[:id])
        free.destroy
        redirect_to action: :index
      end
    
      private
      def free_params
        params.require(:free).permit(:number, :image, :images2, :images3, :images4, :images5, :catch, :overview, :company, :member, :url)
      end

end
