fake_users = [
  [ "m@p.com", 12345678, 12345678, "Mary", "Poppins" ],
  [ "h@p.com", 12345678, 12345678, "Harry", "Potter" ],
  [ "c@k.com", 12345678, 12345678, "Clark", "Kent" ],
  [ "b@w.com", 12345678, 12345678, "Bruce", "Wayne" ],
  [ "a@k.com", 12345678, 12345678, "Ash", "Ketchum" ],
  [ "c@d.com",12345678, 12345678, "Count", "Dracula" ]
]

fake_users.each do | email, password, password_confirmation, first_name, last_name |
  User.create( email: email, password: password, password_confirmation: password_confirmation, first_name: first_name, last_name: last_name, admin: false, active: true, approved: true, confirmed: true, avatar: nil)
  .avatar.attach(io: File.open(Rails.root.join("app/assets/images/#{first_name}.jpg")), filename: "#{first_name}.jpg")
end

fake_posts_1 = [
  [ "Oh, the terrible struggle that I have had against sleep so often of late; 
    the pain of the sleeplessness, or the pain of the fear of sleep, 
    and with such unknown horror as it has for me! How blessed are some people, 
    whose lives have no fears, no dreads; to whom sleep is a blessing that comes nightly, 
    and brings nothing but sweet dreams.", 25, 6, nil ],
  [ "I’ll be in my bedroom, making no noise and pretending I’m not there.", 12, 2, nil ],
  [ "I'm not a plane. I'm not a bird. Who am I? Hold on,
    let me take my glasses off, maybe that will give you a clue.", 9, 3, nil ],
  [ "Hey Metahive, recommendations for best sunscreen please. Go!", 14, 6, nil ],
]

fake_posts_1.each do | content, likes, user_id, image |
  Post.create( content: content, likes: likes, user_id: user_id, image: image)
end

Post.create( content: 'Pikachou!', likes: 25, user_id: 5, image: nil )
.image.attach(io: File.open(Rails.root.join("app/assets/images/pikachou.jpg")), filename: "pickachou.jpg")

fake_posts_2 = [
[ "Maybe that’s what batman is about. Not winning...but failing, and getting back up. 
  Knowing he’ll fail, fail a thousand times, but still won’t give up.", 11, 4, nil ],
[ "If anybody's out there, you can come out. And if you're a monster or a ghost, 
  you can stay where you are, and we won't bother you.", 16, 5, nil ],
[ "Aberto? Aguamenti? Ascendio? Arresto Momentum? Arania Exumai? Aqua Eructo? Appare Vestigium? 
  Aparecium? Anteoculatia? Anapneo? Alohomora? Alarte Ascendare? Ok I don't know. Ask Hermione!", 13, 2, nil ],
[ "These are few of my favourite things:
  asynchronous functions in Javascript, mocking in Rspec and Gin!", 5, 1, nil ]
]

fake_posts_2.each do | content, likes, user_id, image |
  Post.create( content: content, likes: likes, user_id: user_id, image: image)
end

Post.create( content: 'My favourite pic from last night!', likes: 15, user_id: 4, image: nil )
.image.attach(io: File.open(Rails.root.join("app/assets/images/batman.jpg")), filename: "batman.jpg")

fake_comments = [
  [ "You look juicy. Meet me after dark?", 6, 9 ],
  [ "I have a good one. British weather 150SPF!", 2, 4 ],
  [ "Are you sure it starts with an 'A'?", 5, 8 ],
  [ "Who is this Clark Kent?", 4, 2 ],
  [ "Who is this wuss?", 3, 2 ],
  [ "Flying rat! Loser!", 3, 6 ],
  [ "You need some vitamine D love!", 4, 4 ]
]

fake_comments.each do | content, user_id, post_id |
  Comment.create( content: content, user_id: user_id, post_id: post_id)
end 