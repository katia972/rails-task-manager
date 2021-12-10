class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.new(params[:task])
    @tasks.save
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(tasks_params)
    redirect_to task_path
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to task_path
  end

  private

  def tasks_params
    params.require(:task).permit(:title, details)
  end
end
