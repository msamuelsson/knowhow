class CompaniesController < ApplicationController
      #before_action :authenticate_user!
  
      helper_method :sort_column, :sort_direction
      def index
         @all_areas = Company.where(:deleted => false || nil).distinct(:area).pluck(:area)

         @selected_area = params[:area_filter] || session[:area_filter] || @all_areas.sort[0]
	 if Company.where(:area => @selected_area, :deleted => false || nil).empty? 
           @selected_area = @all_areas.sort[0]
	 end
         if params[:area_filter] != session[:area_filter]
           session[:area_filter] = @selected_area
           flash.keep
         end
         @selected_companies = Company.where(:area => @selected_area, :deleted => false || nil).order(sort_column + ' ' + sort_direction)
         @selected_company_id = params[:company_id] || session[:company_id] || @selected_companies[0].id
	 if Company.where(:area => @selected_area, :id => @selected_company_id, :deleted => false || nil).empty? 
           @selected_company_id = @selected_companies[0].id
	 end
         if params[:company_id] != session[:company_id]
           session[:company_id] = @selected_company_id
           flash.keep
         end
         @selected_company = Company.find(@selected_company_id)
         #logger.debug "selected_company_id: #{@selected_company_id}"
      end

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
          flash[:notice] = "#{@company.compagnia} creata."
          #redirect_to companies_path(:area_filter => @company.area)
          redirect_to companies_path(:area_filter => @company.area, :company_id => @company.id)
        else
          #flash[:notice] = "Creazione compagnia fallita."
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
          flash[:notice] = "#{@company.compagnia} aggiornata."
          redirect_to companies_path(:area_filter => @company.area, :company_id => @company.id)
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
        #@company.destroy
        @company.update_attribute(:deleted,:true)
        flash[:notice] = "Compagnia '#{@company.compagnia}' eliminata."
        redirect_to companies_path(:area_filter => @company.area)
      end

      private
        def company_params
          params.require(:company).permit(:compagnia, :area, :provvigione, :autore, :aggiornamento, :canale_1, :canale_2, :interlocutore, :note_operative, :portale, :credenziali, :premio_minimo, :scheda_condizioni, :questionari, :brochure, :nota_informativa, :created_at, :updated_at)
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
