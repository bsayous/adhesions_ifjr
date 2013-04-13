class ComptesController < Devise::SessionsController
	skip_before_filter :verfier_comptable, :only => [:verifier, :destroy, :remplir_infos_individu, :valider_infos_individu, :remplir_infos_structure, :valider_infos_structure]
	
	def verifier		
	end
	
	def remplir_infos_individu
		@individu = Individu.new
	end
	
	def valider_infos_individu
		@individu = Individu.new(params[:individu])
		if @individu.save
			@individu.compte = current_compte
			redirect_to @individu, notice: 'Individu was successfully created.'
		else
			render action: "remplir_infos_individu"
		end
	end
	
	
	def remplir_infos_structure
		@structure = Structure.new
	end
	
	def valider_infos_structure
		@structure = Structure.new(params[:structure])
		if @structure.save
			@structure.compte = current_compte
			redirect_to @structure, notice: 'Structure was successfully created.'
		else
			render action: "remplir_infos_structure"
		end		
	end
	
end
