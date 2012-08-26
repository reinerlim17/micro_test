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
			flash[:sucees] = "employee has been saved."
			redirect_to employees_path
		else
			flash[:alert] = "Inquiry has not been saved."
			render 'new'
		end
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update_attributes(params[:employee])
		flash[:success] = "employee has been Update."
		redirect_to @employee
	else
		render 'new'
	end
end
	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		redirect_to employees_path
	end
end
