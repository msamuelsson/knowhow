class CompaniesController < ApplicationController
      #def index
          #@all_areas = Company.all_areas
      	  #@companies = Company.all
      #end

      def index
        sort = params[:sort] || session[:sort]
        @all_areas = Company.all_areas
        @selected_areas = params[:areas] || session[:areas] || {}

        if @selected_areas == {}
          @selected_areas = Hash[@all_areas.map {|area| [area, area]}]
        end

        if params[:sort] != session[:sort] or params[:areas] != session[:areas]
          session[:sort] = sort
          session[:areas] = @selected_areas
          flash.keep
          redirect_to :sort => sort, :areas => @selected_areas and return
        end
        @companies = Company.where(area:@selected_areas.keys).order(sort)
      end

      def new
        # default: render 'new' template
        #@company = Company.new
      end

      def create
        @company = Company.new(company_params)
        #@company = Company.create!(params[:company])
        @company.save
        flash[:notice] = "#{@company.compagnia} was successfully created."
        redirect_to companies_path
      end

      def edit
        @company = Company.find(params[:id])
      end

      def update
        @company = Company.find params[:id]
        if @company.update_attributes(company_params)
          flash[:notice] = "#{@company.compagnia} was successfully updated."
          redirect_to companies_path
        else
          render 'edit' # note, 'edit' template can access @movie's field values!
        end
      end

      def show
        #id = params[:id]
        @company = Company.find(params[:id])


        # will render app/views/companies/show.html.haml by default
      end
      
      def destroy
        @company = Company.find(params[:id])
        @company.destroy
        flash[:notice] = "Company '#{@company.compagnia}' deleted."
        redirect_to companies_path
      end

      private
        def company_params
          params.require(:company).permit(:compagnia, :area, :provvigione, :autore, :aggiornamento, :canale_1, :canale_2, :interlocutore)
        end
end
