class ExpendituresController < ApplicationController

	def index
		@user = current_user
		@expenditures = @user.expenditures.order(:name) 
	end 

	def new
		@expenditure = Expenditure.new
	end

	def create
		@expenditure = current_user.expenditures.create (expenditure_params)
		@user = current_user

		if @expenditure.save 
		redirect_to @expenditure
	else
		render 'new'
	end
end 

def show
		@expenditure = Expenditure.find params[:id]
	end 

def edit
  @expenditure = Expenditure.find(params[:id])
end

def update
	@expenditure = Expenditure.find(params[:id])

	if @expenditure.update(expenditure_params)
		redirect_to @expenditure
	else
		render 'edit'
	end 
end 

def destroy
	@expenditure =Expenditure.find(params[:id])
	@expenditure.destroy

	redirect_to expenditures_path
	end 

private 
def expenditure_params 
	params.require(:expenditure).permit(:name, :price, :avatar)
end  
end
