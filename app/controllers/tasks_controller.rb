class TasksController < ApplicationController

  def create
    @tasks = Task.order('created_at DESC')
    @task = Task.new(task_params)
    @task.status = 0
    if @task.save
      redirect_to root_url
    else
      render 'home/index'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to root_url
    else
      render 'tasks/edit'
    end
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to root_url
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
    if params[:q]
      @tasks = Task.where(status: 0).search(params[:q])
    else
      @tasks = []
    end
  end

  private

    def task_params
      params.require(:task).permit(:name, :due_date)
    end
end
