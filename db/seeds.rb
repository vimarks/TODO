user1 = User.create(username: "vincent", password_digest: "12345")
user2 = User.create(username: "Pabstbottle7", password_digest: "12345")
user3 = User.create(username: "Nutmeggy5", password_digest: "12345")



category1 = Category.create(name: "pets", user_id: 1)
category2 = Category.create(name: "cars", user_id: 2)

location1 = Location.create(name: "home", lat: "44", long: "55")

task1 = Task.create(user_id: 1, location_id: 1, priority: "high", duration: 20, description: "around the block", name: "walk dog",
        category_id: 1, deadline: "2018-01-02 04:57", is_completed: false )
task2 = Task.create(user_id: 1, location_id: 1, priority: "low", duration: 60, description: "Tesla needs new oil", name: "oil change",
                category_id: 2, deadline: "2018-01-02 04:57", is_completed: false )

task3 = Task.create(user_id: 3, location_id: 1, priority: "low", duration: 30, description: "Jump as high as I can", name: "Jump on trampoline",
                                category_id: 2, deadline: nil, is_completed: false )
