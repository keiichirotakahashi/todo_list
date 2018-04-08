class TasksController < ApplicationController

  def create
  end

  def edit
  end

  def update
  end

  def status
    @task = Task.find(params[:id])
    # statusを変更する
    if @task.status == 0
      @task.status = 1
    elsif @task.status == 1
      @task.status = 0
    end
    if @task.save
      redirect_to root_url
    end
  end

  def search
  end
end
