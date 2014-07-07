class CompaniesController < ApplicationController
      def index
      	  @companies = Company.all
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
          params.require(:company).permit(:compagnia, :area, :provvigione, :autore)
        end
end
