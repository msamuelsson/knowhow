class CompaniesController < ApplicationController
      def index
      	  @companies = Company.all
      end

      #def new
        # default: render 'new' template
        #@company = Company.new
      #end

      def create
        @company = Company.new(company_params)
        #@company = Company.create!(params[:company])
        @company.save
        #flash[:notice] = "#{@company.compagnia} was successfully created."
        redirect_to companies_path
      end

      private
        def company_params
          params.require(:company).permit(:compagnia, :provvigione, :autore)
        end

      def show
        id = params[:id]
        @company = Company.find_by_id(id)
        if @company == nil
          flash[:notice] = "Company information could not be found!!!!!!!"
          redirect_to movies_path
        end
        render(:partial => 'company', :object => @company) if request.xhr?
        # will render app/views/movies/show.<extension> by default
      end
end
