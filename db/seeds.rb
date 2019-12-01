user1 = User.create(username: "vincent", password_digest: "12345")
user2 = User.create(username: "Pabstbottle7", password_digest: "12345")
user3 = User.create(username: "Nutmeggy5", password_digest: "12345")


category1 = Category.create(name: "pets")
category2 = Category.create(name: "cars")

location1 = Location.create(name: "home", lat: "44", long: "55")

task1 = Task.create(user_id: 1, location_id: 1, priority: "high", duration: 20, description: "around the block", name: "walk dog",
        category_id: 1, deadline: "2018-01-02 04:57", is_completed: false )
task2 = Task.create(user_id: 1, location_id: 1, priority: "low", duration: 60, description: "Tesla needs new oil", name: "oil change",
                category_id: 2, deadline: "2018-01-02 04:57", is_completed: false )






# users = [
#   {
#     "username" => "Pabstbottle7",
#     "password_digest" => "12345"
#   },
#   {
#     "username" => "Nutmeggy5",
#     "password_digest" => "mormon"
#   }
# ]
#
# categories = [
#   {
#     "name" => "car"
#   },
#   {
#     "name" => "pet"
#   }
# ]
#
# tasks = [
#   {
#     "name" => "Walk the dog",
#     "description" => "Around the block and up the hill, run'm hard",
#     "location_id" => 1,
#     "category_id" => 1,
#     "priority" => "high",
#     "user_id" => 1,
#     "duration" => 20,
#     "is_completed" => false,
#     "deadline" => "2018-01-02 04:57"
#   },
#   {
#     "name" => "Change the oil",
#     "description" => "Tesla needs an oil-change",
#     "location_id" => 2,
#     "category_id" => 2,
#     "priority" => "high",
#     "user_id" => 1,
#     "duration" => 60,
#     "is_completed" => false,
#     "deadline" => "2018-01-02 04:57"
#   }
# ]

# tasks.each do |x|
#   task = Task.create(name: x["name"], description: x["description"], location_id: x["location_id"], category_id: x["category_id"],
#   priority: x["priority"], user_id: x["user_id"], duration: x["duration"], is_completed: x["is_completed"], deadline: x["deadline"] )
# end
