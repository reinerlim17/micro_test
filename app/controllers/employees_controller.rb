class EmployeesController < ApplicationController
	def index
		@employees = Employee.order("id DESC").all 
	end
	def new
		@employee = Employee.new(params[:employee])
	end

	def create
		@employee = Employee.new(params[:employee])
		if @employee.save
			#flash[:notice] = "Inquiry has been saved."
			redirect_to employees_path
		else
			#flash[:alert] = "Inquiry has not been saved."
			render 'new'
		end
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update_attributes(params[:employee])
		#flash[:notice] = "Inquiry has been Update."
			redirect_to @employee
		else
			#flash[:alert] = "Failed"
			render 'new'
		end
	end
end

