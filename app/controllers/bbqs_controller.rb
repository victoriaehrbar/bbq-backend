class BbqsController < ApplicationController

    def index
        bbqs = Bbq.all
        render json: bbqs
    end

    def show
        bbq = Bbq.find(params[:id])
        render json: bbq
    end

    def create
        bbq = Bbq.new(bbq_params)
        if bbq.save
            render json: bbq
        end
    end

    private

    def bbq_params
        params.require(:bbq).permit(:name, :rating, :review)
    end
end
