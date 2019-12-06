class TasksController < ApplicationController

  def index
    tasks = Task.all
    categories = Category.all
    render json: {
      tasks: tasks,
      categories: categories
    }
  end
  def show
    user_id = params[:id]
    @user = User.find(params[:id])
    if logged_in? && @user == current_user
      tasks = Task.where(user_id: user_id)
      categories = Category.where(user_id: user_id)
      locations = Location.where(user_id: user_id)
      options = {
        include: [:category, :location]
      }
      render json: {
        tasks:TaskSerializer.new(tasks, options),
        categories: categories,
        locations: locations
      }
    end

  end

  def create

    name = params["name"]
    priority = params["priority"]
    location_id = params["location_id"]
    description = params["description"]
    duration = params["duration"]
    is_completed = params["is_completed"]
    deadline = params["deadline"]
    user_id = params["user_id"]
    category_id = params["category_id"]


    task = Task.new(
    name: name,
    priority: priority,
    description: description,
    duration: duration,
    is_completed: is_completed,
    deadline: deadline,
    user_id: user_id,
    location_id: location_id,
    category_id: category_id)
    puts task
    if task.save
      render json: task
    else
      render json: {
        status: 400,
        error: "unable to save"
      }
    end

  end

  def destroy
    task = Task.find(params['id'])
    task.destroy
    render json: task.id
  end
end
