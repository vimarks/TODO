class TasksController < ApplicationController

  def index
    tasks = Task.all.select{ |task| task.user_id === 1 }
    categories = Category.all.select{ |category| category.user_id === 1 }
    render json: {
      tasks: tasks,
      categories: categories
    }
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

    if task.save
      render json: task
    end

  end
end
