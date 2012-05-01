class SiteController < ApplicationController
  def home
    @task = Task.new
    @incomplete_tasks = Task.incomplete
    @completed_tasks  = Task.completed

  end
end