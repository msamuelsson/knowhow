class CompaniesController < ApplicationController
      #before_action :authenticate_user!
  
      helper_method :sort_column, :sort_direction
      def index
         @all_areas = Company.distinct(:area).pluck(:area)

         @selected_area = params[:area_filter] || session[:area_filter]
         if params[:area_filter] != session[:area_filter]
           session[:area_filter] = @selected_area
           flash.keep
         end
         @selected_companies = Company.where(:area => @selected_area).order(sort_column + ' ' + sort_direction)

      end

      #def index
          #@all_areas = Company.all_areas
          #@selected_area = params[:area_filter] || session[:area_filter]
          #sort = params[:sort] || session[:sort]
    
          #if params[:sort] != session[:sort] or params[:area_filter] != session[:area_filter]
            #session[:sort] = sort
            #session[:area_filter] = @selected_area
            #flash.keep
            #redirect_to :sort => sort, :area_filter => @selected_area and return
          #end
          #@selected_companies = Company.where(:area => @selected_area).order(sort)
      #end

      def new
        # default: render 'new' template
        @company = Company.new
        @selected_area = params[:area_filter] || session[:area_filter]
        authorize! :create, @company
      end

      def create
        @company = Company.new(company_params)
        #@company = Company.create!(params[:company])
        if @company.save
          flash[:notice] = "#{@company.compagnia} was successfully created."
          redirect_to companies_path(:area_filter => @company.area)
        else
          #flash[:notice] = "Could not create company."
          @selected_area = params[:area_filter] || session[:area_filter]
          render 'new' # note, 'new' template can access @company's field values!
        end  
      end

      def edit
        @company = Company.find(params[:id])
        authorize! :update, @company
      end

      def update
        @company = Company.find params[:id]
        if @company.update_attributes(company_params)
          flash[:notice] = "#{@company.compagnia} was successfully updated."
          redirect_to companies_path(:area_filter => @company.area)
        else
          #flash[:notice] = "#{@company.compagnia} was not successfully updated."
          #redirect_to companies_path(:area_filter => @company.area)
          render 'edit' # note, 'edit' template can access @company's field values!
        end
      end

      def show
        #id = params[:id]
        @company = Company.find(params[:id])
        session[:area_filter] = @company.area
        flash.keep
        if @company == nil
          flash[:notice] = "No company with that ID could be found!!!!!!!"
          redirect_to companies_path
        end
        @noteoperative = @company.note_operative
        render(:partial => 'noteoperative', :object => @noteoperative) if request.xhr?
        # will render app/views/companies/show.html.haml by default
      end
      
      def destroy
        @company = Company.find(params[:id])
        @company.destroy
        flash[:notice] = "Company '#{@company.compagnia}' deleted."
        redirect_to companies_path(:area_filter => @company.area)
      end

      private
        def company_params
          params.require(:company).permit(:compagnia, :area, :provvigione, :autore, :aggiornamento, :canale_1, :canale_2, :interlocutore, :note_operative, :portale, :premio_minimo, :scheda_condizioni, :questionari, :brochure, :nota_informativa, :created_at, :updated_at)
        end

      private
      def sort_column
        #params[:sort] || "compagnia"
        Company.column_names.include?(params[:sort]) ? params[:sort] : "compagnia"
      end
      def sort_direction
        #params[:direction] || "asc"
        %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
      end
end
