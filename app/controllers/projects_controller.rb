class ProjectsController < ApplicationController
	before_action :get_project, only:[:show]
	def index
		@projects = Project.all
	end
	def show
	end
	private
	def get_project
		@project = Project.find(params[:id])
	end
end
