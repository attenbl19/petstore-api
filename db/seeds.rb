# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Category.destroy_all
Review.destroy_all
Business.destroy_all

User.reset_pk_sequence
Category.reset_pk_sequence
Review.reset_pk_sequence
Business.reset_pk_sequence



################################ Seeds for USER ################################

tillie = User.create(username: "Tillie", password: "abc123" )
john  = User.create(username: "Big Dog", password: "321cba")



# tillie.reviews.create(
#     title: "Great All Around Service",
#     description: "customer service is only eclipsed by the outstanding care",
#     score: 5,
#     businesses_id: businesses_array.fifth
# )

# tillie.reviews.create(
#     title: "Great Support",
#     description: "Pudding's care giver is so attentive and gentle.",
#     score: 5,
#     businesses_id: businesses_array.third
# )



# john.reviews.create(
#     title: "Excellent Service",
#         description: "Anytime I need them, they are there for me!",
#         score: 5,
#         businesses_id: businesses_array.second
# )

# john.reviews.create(
#     title: "Good Service",
#     description: "Service is great, price a bit to high.",
#     score: 3,
#     businesses_id: businesses_array.first
# )


################################ Seeds for CATEGORY #############################

home_visits = Category.create(name: "Home Visits")
overnight_stay = Category.create(name: "Overnight Stay")
boarding = Category.create(name: "Boarding")
dog_walking = Category.create(name: "Dog Walking")


################################ Seeds for PET BUSINESSES ###############################
businesses_array =

[ 
    {
        name: "Anything's Pawsible", 
        image_url: "https://img.icons8.com/ios-glyphs/100/000000/pets.png",
        location: "New York City",
        category_id: 1
    },

    {
        name: "Brooklyn Tails & Trails Dog Walkers",
        image_url: "https://img.icons8.com/ios-glyphs/100/000000/dog-muzzle.png",
        location: "New York City",
        category_id: 2
    },
    
    # {
    #     name: "Cuddles and Tails Pet Services",
    #     image_url: "https://img.icons8.com/bubbles/100/000000/animal-shelter.png",
    #     location: "New York City",
    #     category_id: 3
    # },

    # {
    #     name: "Hudson's Hounds NYC",
    #     image_url: "https://img.icons8.com/color/100/000000/dog-park.png",
    #     location: "New York City",
    #     category_id: 4
    # },

    # {
    #     name: "Jordon's Pet Care",
    #     image_url: "https://img.icons8.com/pastel-glyph/100/000000/pet-bone.png",
    #     location: "New York City",
    #     category_id: 1
    # },
    
    # {
    #     name: "Mobile Mutts Dog Walking and Cat Sitting",
    #     image_url: "https://img.icons8.com/material-rounded/100/000000/animal-shelter.png",
    #     location: "New York City",
    #     category_id: 2
    # },

    # {
    #     name: "Never Alone Pets",
    #     image_url: "https://img.icons8.com/fluent/100/000000/hamster.png",
    #     location: "New York City",
    #     category_id: 3
    # },

    # {
    #     name: "Paws on Pine",
    #     image_url: "https://img.icons8.com/fluent/100/000000/dog-collar.png",
    #     location: "New York City",
    #     category_id: 4
    # },
    
    # {
    #     name: "Pet Sitting Pod",
    #     image_url: "https://img.icons8.com/officel/100/000000/parrot.png",
    #     location: "New York City",
    #     category_id: 1
    # },

    # {
    #     name: "Wendy's Pet Care",
    #     image_url: "https://img.icons8.com/fluent/100/000000/cat.png",
    #     location: "New York City",
    #     category_id: 2
    # }
]



businesses_array.each do |biz_hash|
    Business.create!(biz_hash)
end


# anything_pawsible = Business.create!(
#     name: "Anything's Pawsible", 
#     image_url: "https://img.icons8.com/ios-glyphs/100/000000/pets.png",
#     location: "New York City",
#     category_id: Category.last.id)



########################################## Seeds for REVIEWS ################################

reviews = Review.create!([

    {
        title: "Great All Around Service",
        description: "customer service is only eclipsed by the outstanding care",
        score: 5,
        business_id: Business.fifth
    },
    {
        title: "Excellent Service",
        description: "Anytime I need them, they are there for me!",
        score: 5,
        business_id: Business.second
    },
    {
        title: "Great Support",
        description: "Pudding's care giver is so attentive and gentle.",
        score: 5,
        business_id: Business.third
    },
    {
        title: "Happy Camper",
        description: "Charlie and I couldn't be happier with the care received!",
        score: 5,
        business_id: Business.fourth
    },
    {
        title: "Good Service",
        description: "Service is great, price a bit to high.",
        score: 3,
        business_id: Business.first
    }
])

# Review.create(reviews)
# puts "hello"

# review1 = Review.create(title: "Ha")
