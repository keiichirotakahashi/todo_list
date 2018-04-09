class HomeController < ApplicationController
  def index
  	@task = Task.new
    @tasks = Task.order('created_at DESC')
  end
end
