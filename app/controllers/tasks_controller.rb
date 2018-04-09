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

  private

    def task_params
      params.require(:task).permit(:name, :due_date)
    end
end
