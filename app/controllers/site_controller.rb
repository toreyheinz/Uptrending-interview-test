class SiteController < ApplicationController
  def home
    @task = Task.new
    @tasks = Task.all
  end
end