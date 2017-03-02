# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user = User.create([

    { name: "Neo", email: "n@n.com", password:"nerd" },
    { name: "A", email: "a@a.com", password:"aword" },
    { name: "B", email: "b@b.com", password:"bword" },
    { name: "Morpheus", email: "m@m.com", password:"redpillbluepill" },

])


Movie.destroy_all
movies = Movie.create([

    { title:"Matrix", genre:"Action", release_date:"1999-03-31", director:"Wachowski", poster_url:"http://bit.ly/2lddQm8" },
    { title:"John Wick", genre:"Romance", release_date:"2017", director:"Stahelski", poster_url:"http://bit.ly/2m9f94I" },
    { title:"Point Break", genre:"Thriller", release_date:"1991", director:"Bigelow", poster_url:"http://bit.ly/2lVCWVn"  },
    { title:"Keanu", genre:"Comedy", release_date:"2016", director:"Atencio", poster_url:"http://bit.ly/2lVNTGx"  },

])
