class EnergiesController < ApplicationController
      def index
      	  @energies = Energy.all
      end

      #def new
        # default: render 'new' template
        #@energy = Energy.new
      #end

      def create
        @energy = Energy.new(energy_params)
        #@energy = Energy.create!(params[:energy])
        @energy.save
        #flash[:notice] = "#{@energy.compagnia} was successfully created."
        redirect_to energies_path
      end

      private
        def energy_params
          params.require(:energy).permit(:compagnia, :provvigione, :autore)
        end

      def show
        id = params[:id]
        @energy = Energy.find_by_id(id)
        if @energy == nil
          flash[:notice] = "Company information could not be found!!!!!!!"
          redirect_to movies_path
        end
        render(:partial => 'energy', :object => @energy) if request.xhr?
        # will render app/views/movies/show.<extension> by default
      end
end
