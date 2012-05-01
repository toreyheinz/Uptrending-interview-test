class SiteController < ApplicationController
  def home
    @task = Task.new
    @tasks = Task.undone
  end
end