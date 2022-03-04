class BbqsController < ApplicationController

    def index
        bbqs = Bbq.all
        render json: bbqs
    end

    def show
        bbq = Bbq.find(params[:id])
        render json: bbq
    end
end
