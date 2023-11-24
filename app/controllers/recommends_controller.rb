class RecommendsController < ApplicationController
    def index
    end
  
    def new
      @recommend = Recommend.new
    end
  
    def show
      @recommend = Recommend.find_by(id: params[:id])
    end
  
    def create
      @recommend = Recommend.new(recommend_params)
      params[:recommend][:question] ? @recommend.question = params[:recommend][:question].join("") : false
      if @recommend.save
          flash[:notice] = "診断が完了しました"
          redirect_to recommend_path(@recommend.id)
      else
          redirect_to :action => "new"
      end
    end
    
  
  private
    def recommend_params
        params.require(:recommend).permit(:id, question: [])
    end
end
