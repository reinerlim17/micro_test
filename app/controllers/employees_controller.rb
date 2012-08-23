class EmployeesController < ApplicationController
	def index
		@employees = Employee.order("id DESC").all 
	end
	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(params[:employee])
		if @employee.save
			#flash[:notice] = "Inquiry has been saved."
			redirect_to employees_path
		else
			#flash[:alert] = "Inquiry has not been saved."
			render :action => 'new'
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
		@employee.update_attributes(params[:employee])
		#flash[:notice] = "Inquiry has been Update."
		@employee.save
		redirect_to @employee
	end
	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		redirect_to employee_path
end
end
