FactoryGirl.define do
  factory :user do
    name     "Dave Chappelle"
    email    "dave@chappelle.com"
    password "rickjamesbitch"
    password_confirmation "rickjamesbitch"
  end

  factory :block_tower do
    name            "ToDoList"
    user_id         "1"
  end         

  factory :block do
    name           "lorem ipsum"
    block_tower_id 1
    position       1
    time           1
  end
end
