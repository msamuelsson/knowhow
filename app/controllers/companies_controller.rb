class CompaniesController < ApplicationController
      #before_action :authenticate_user!
  
      helper_method :sort_column, :sort_direction, :button_link_to

      def index
         @all_areas = Company.where(:deleted => false || nil).distinct(:area).pluck(:area)
         
         @selected_area = params[:area_filter] || session[:area_filter] || @all_areas.sort[0]
         
         if @selected_area == "all_areas"
           @selected_companies = Company.where(:deleted => false || nil).order(sort_column + ' ' + sort_direction)
           @selected_company_id = params[:company_id] || session[:company_id] || @selected_companies[0].id
           #@selected_company = Company.find(@selected_company_id)
           #session[:area_filter] = @selected_area
           #session[:company_id] = @selected_company_id
           #session[:selected_comp_area] = @selected_company.area
           #flash.keep
         else
           

           #@selected_area = params[:area_filter] || session[:area_filter] || @all_areas.sort[0]
	         if Company.where(:area => @selected_area, :deleted => false || nil).empty? 
             @selected_area = @all_areas.sort[0]
	         end
         
           #session[:area_filter] = @selected_area
         
           @selected_companies = Company.where(:area => @selected_area, :deleted => false || nil).order(sort_column + ' ' + sort_direction)
           @selected_company_id = params[:company_id] || session[:company_id] || @selected_companies[0].id
	         if Company.where(:area => @selected_area, :id => @selected_company_id, :deleted => false || nil).empty? 
             @selected_company_id = @selected_companies[0].id
	         end
     
           #session[:company_id] = @selected_company_id
           #flash.keep
        
           #@selected_company = Company.find(@selected_company_id)
        end
        @selected_company = Company.find(@selected_company_id)
        session[:area_filter] = @selected_area
        session[:company_id] = @selected_company_id
        session[:selected_comp_area] = @selected_company.area
        flash.keep
        
      end

      def new
        # default: render 'new' template
        @company = Company.new
        @selected_area = params[:area_filter] || session[:area_filter]
        @selected_company_area = session[:selected_comp_area]
        #authorize! :create, @company
      end

      def create
        @company = Company.new(company_params)
        
        # Add company specific info
        @comp_info = Company.where(:compagnia => company_params[:compagnia]).first
        if @comp_info != nil
          @company.portale = @comp_info.portale
          @company.credenziali = @comp_info.credenziali
          @company.altri_documenti_file_name = @comp_info.altri_documenti_file_name
          @company.altri_documenti_content_type = @comp_info.altri_documenti_content_type
          @company.altri_documenti_file_size = @comp_info.altri_documenti_file_size
          @company.altri_documenti_updated_at = @comp_info.altri_documenti_updated_at
        end
        
        # Add area specific info
        @area_info = Company.where(:area => company_params[:area]).first
        if @area_info != nil
          @company.questionariobs1_file_name = @area_info.questionariobs1_file_name
          @company.questionariobs1_content_type = @area_info.questionariobs1_content_type
          @company.questionariobs1_file_size = @area_info.questionariobs1_file_size
          @company.questionariobs1_updated_at = @area_info.questionariobs1_updated_at
          @company.questionariobs2_file_name = @area_info.questionariobs2_file_name
          @company.questionariobs2_content_type = @area_info.questionariobs2_content_type
          @company.questionariobs2_file_size = @area_info.questionariobs2_file_size
          @company.questionariobs2_updated_at = @area_info.questionariobs2_updated_at
          @company.brochurebs_file_name = @area_info.brochurebs_file_name
          @company.brochurebs_content_type = @area_info.brochurebs_content_type
          @company.brochurebs_file_size = @area_info.brochurebs_file_size
          @company.brochurebs_updated_at = @area_info.brochurebs_updated_at
        end
        
        if @company.save
          flash[:notice] = "#{@company.compagnia} creata."
          redirect_to companies_path(:area_filter => @company.area, :company_id => @company.id)
        else
          @selected_area = params[:area_filter] || session[:area_filter]
          render 'new' # note, 'new' template can access @company's field values!
        end  
      end

      def edit
        @company = Company.find(params[:id])
        #authorize! :update, @company
      end

      def update
        # Update all parameters for this specific company and for this specific area, 
        # also update Portale, Credenziali and Altri Documenti for all companies with the same name (for all areas)
        @company = Company.find params[:id]
        if @company.update_attributes(company_params)
          Company.where(:compagnia => @company.compagnia).update_all({:portale => @company.portale, 
								     :credenziali => @company.credenziali,
								     :altri_documenti_file_name => @company.altri_documenti_file_name,
								     :altri_documenti_content_type => @company.altri_documenti_content_type,
								     :altri_documenti_file_size => @company.altri_documenti_file_size,
								     :altri_documenti_updated_at => @company.altri_documenti_updated_at })
          flash[:notice] = "#{@company.compagnia} aggiornata."
          redirect_to companies_path(:area_filter => @company.area, :company_id => @company.id)
        else
          #flash[:notice] = "#{@company.compagnia} was not successfully updated."
          #redirect_to companies_path(:area_filter => @company.area)
          render 'edit' # note, 'edit' template can access @company's field values!
        end
      end

      def show
        
      end
      
      def destroy
        @company = Company.find(params[:id])
        #@company.destroy
        @company.update_attribute(:deleted,:true)
        flash[:notice] = "Compagnia '#{@company.compagnia}' eliminata."
        redirect_to companies_path(:area_filter => @company.area)
      end
      
      def editarea
        @company = Company.find(params[:id])
      end
      
      def updatearea
        @company = Company.find params[:id]
        Company.where(:area => @company.area).each do |company_area|
          company_area.update_attributes(company_params)
        end
        flash[:notice] = "Area #{company_params[:area]} aggiornata."
        redirect_to companies_path(:area_filter => company_params[:area], :company_id => company_params[:id])
      end

      def remove_scheda_condizioni
        @company = Company.find(params[:id])
	      @company.scheda_condizioni = nil
	      @company.save
	      redirect_to edit_company_path(@company)
      end
      
      def remove_questionariocomp1
        @company = Company.find(params[:id])
	      @company.questionariocomp1 = nil
	      @company.save
	      redirect_to edit_company_path(@company)
      end
      
      def remove_questionariocomp2
        @company = Company.find(params[:id])
        @company.questionariocomp2 = nil
        @company.save
        redirect_to edit_company_path(@company)
      end
      
      def remove_questionariobs1
        @company = Company.find(params[:id])
        Company.where(:area => @company.area).each do |company_area|
          company_area.questionariobs1 = nil
          company_area.save
        end
        redirect_to editarea_path(@company)
      end
      
      def remove_questionariobs2
        @company = Company.find(params[:id])
        Company.where(:area => @company.area).each do |company_area|
          company_area.questionariobs2 = nil
          company_area.save
        end
        redirect_to editarea_path(@company)
      end
      
      def remove_brochurebs
        @company = Company.find(params[:id])
        Company.where(:area => @company.area).each do |company_area|
          company_area.brochurebs = nil
          company_area.save
        end
        redirect_to editarea_path(@company)
      end

      def remove_brochure
        @company = Company.find(params[:id])
	      @company.brochure = nil
	      @company.save
	      redirect_to edit_company_path(@company)
      end

      def remove_nota_informativa
	      @company = Company.find(params[:id])
	      @company.nota_informativa = nil
	      @company.save
	      redirect_to edit_company_path(@company)
      end

      def remove_altri_documenti
        @company = Company.find(params[:id])
        Company.where(:compagnia => @company.compagnia).each do |company_compagnia|
          company_compagnia.altri_documenti = nil
          company_compagnia.save
        end
        redirect_to edit_company_path(@company)
      end
      

      private
      def company_params
        params.require(:company).permit(:compagnia, :area, :provvigione, :autore, :aggiornamento, :canale_1, :canale_2, :interlocutore, :note_operative, :portale, :credenziali, :premio_minimo, :scheda_condizioni, :questionariocomp1, :questionariocomp2, :questionariobs1, :questionariobs2, :brochure, :brochurebs, :nota_informativa, :altri_documenti, :created_at, :updated_at)
      end

      def sort_column
        #params[:sort] || "compagnia"
        Company.column_names.include?(params[:sort]) ? params[:sort] : "compagnia"
      end

      def sort_direction
        #params[:direction] || "asc"
        %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
      end

      def button_link_to(name, url)
	      content_tag :button, :type => "button", :onclick => "window.location.href =  '#{url_for(url)}'; " do
	      "#{name}"
	    end

end
end
