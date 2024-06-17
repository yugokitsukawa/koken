class TopsController < ApplicationController

    def index
        @frees = Free.all
        @frees = @frees.page(params[:page]).per(1)
    end


end
