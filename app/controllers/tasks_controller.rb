class TasksController < ApplicationController
  def create
    Task.create(params[:task])
    redirect_to root_path
  end

  def mark_done
    task = Task.find(params[:id])
    if task.mark_done
      flash[:notice] = "#{task.name} is COMPLETE!"
    else
      flash[:alert] = "Failed to complete #{task.name}"
    end
    redirect_to root_path
  end
end