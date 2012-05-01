class SiteController < ApplicationController
  def home
    @incomplete_tasks = Task.incomplete
    @completed_tasks  = Task.completed
  end
end