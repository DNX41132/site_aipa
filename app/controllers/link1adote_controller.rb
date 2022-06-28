class Link1adoteController < ApplicationController

    before_action :set_adoption, only: %i[ show ]

    def link1adote
        @adoptions = Adoption.all
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoption
      @adoption = Adoption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adoption_params
      params.require(:adoption).permit(:name, :breed, :age, :details)
    end
    
end
