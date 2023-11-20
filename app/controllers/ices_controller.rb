class IcesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
    def index
        @ices = Ice.all
    end

    
    def new
        @ice = Ice.new
      end
    
      def list
        @ices = Ice.all
    end
    

      def create
        ice = Ice.new(ice_params)

        ice.user_id = current_user.id

        if ice.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      

      private
      def ice_params
        params.require(:ice).permit(:name, :flavor, :image, :review, :overall)
      end


end
