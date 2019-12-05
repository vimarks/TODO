Task.destroy_all
Category.destroy_all
Location.destroy_all
User.destroy_all



user1 = User.new(username: "vincent", email:"vincent@vincent.com", password: "123")
user1.save
user2 = User.new(username: "saul", email:"saul@saul.com", password: "123")
user2.save
user3 = User.new(username: "steven", email:"steven@steven.com", password: "123")
user3.save




category1 = Category.create(name: "pets", user: user1)
category2 = Category.create(name: "cars", user: user1)
category3 = Category.create(name: "cars", user: user2)
category4 = Category.create(name: "kid", user: user2)
category5 = Category.create(name: "dog", user: user2)
category6 = Category.create(name: "bikes", user: user3)
category7 = Category.create(name: "coffee", user: user3)



location1 = Location.create(name: "work", address:"1400 Lavaca Street, Austin, TX, USA", lat: "30.2770943", long: "-97.7427312", user:user1)
location2 = Location.create(name: "work", address:"1400 Lavaca Street, Austin, TX, USA", lat: "30.2770943", long: "-97.7427312", user:user2)
location3 = Location.create(name: "work", address:"1400 Lavaca Street, Austin, TX, USA", lat: "30.2770943", long: "-97.7427312", user:user3)




task1 = Task.create(user: user1, location: location1, priority: "high", duration: 20, description: "around the block", name: "walk dog",
        category:category1, deadline: "2018-01-02 04:57", is_completed: false )
task2 = Task.create(user: user1, location: location1, priority: "high", duration: 60, description: "Tesla needs new oil", name: "oil change",
        category:category2, deadline: "2018-01-02 04:57", is_completed: false )

task3 = Task.create(user: user2, location: location2, priority: "high", duration: 20, description: "around the block", name: "walk dog",
        category:category5, deadline: "2018-01-02 04:57", is_completed: false )
task4 = Task.create(user: user2, location: location2, priority: "high", duration: 60, description: "Tesla needs new oil", name: "oil change",
        category:category3, deadline: "2018-01-02 04:57", is_completed: false )

task1 = Task.create(user: user3, location: location3, priority: "high", duration: 20, description: "around the block", name: "ride bike",
        category:category6, deadline: "2018-01-02 04:57", is_completed: false )
task2 = Task.create(user: user3, location: location3, priority: "high", duration: 60, description: "bike needs new oil", name: "oil change",
        category:category6, deadline: "2018-01-02 04:57", is_completed: false )
