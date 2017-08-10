model 

User

rails g model Question title:string content:string
rails g model Answer content:string
rails g model Comment content:string
rails g model Vote value:integer


rails g controller Questions index show edit destroy new
rails g controller Answers index show edit destroy new
rails g controller Comments index show edit destroy new
rails g controller Votes index show edit destroy new

 resources :questions, :answers, :comments, :votes