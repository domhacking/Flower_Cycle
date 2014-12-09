User.delete_all
Bouquet.delete_all
Event.delete_all
Purchase.delete_all

user1 = User.create!(name: "Olivia Gibbs", email: "og@gmail.com", role:"Supplier",  password: "password1", company_name: "MrsFlorist", house_number:"2" , road_name: "Fulham Road" , postcode: "SW6 1BW", contact_number: "020 8166 3169",  website: "www.mrsflorist.com")
user2 = User.create!(name: "Stephanie Griffiths", email: "sg@gmail.com", role:"Supplier", password: "password1", house_number: "158",  road_name: "Long Ln" , postcode: "SE1 4BS", contact_number: "020 7407 1666" , website: "www.thelondonflowershop.co.uk" , company_name: "The London Flower Shop")
user3 = User.create!(name: "Ella Tons", email: "et@gmail.com", role:"Supplier", password: "password1", house_number:"60" ,  road_name: "Upper St" , postcode: "N1 0NY" , contact_number: "020 7704 6312", website: "www.angel-flowers.co.uk", company_name: "Angel Flowers" )
user4 = User.create!(name: "Cheryl Finger", email: "cf@gmail.com", role:"Supplier", password: "password1", house_number: "Rossmore Court",  road_name: "Park Rd", postcode: "NW1 6XU", contact_number: "020 7724 7525" , website: "www.flowerstation.co.uk", company_name: "Flower Station" )
user5 = User.create!(name: "George Biggins", email: "gbs@gmail.com", role:"Supplier", password: "password1", house_number: "60",  road_name: "Great Marlborough St", postcode: "W1B 5AH" , contact_number: "020 7573 9563" , website: "www.wildatheart.com" , company_name: "Wild at Heart")
user6 = User.create!(name: "Zoe Gardner", email: "zg@gmail.com", role:"Supplier", password: "password1", house_number: "4",  road_name: "Shepherd St" , postcode: "W1J 7JD" , contact_number: "020 7499 6889" , website: "www.paulthomasflowers.co.uk" , company_name: "Paul Thomas Flowers Ltd" )
user7 = User.create!(name: "Henry Jones", email: "hj@gmail.com", role:"Supplier", password: "password1", house_number: "340" ,  road_name: "Norwood Road", postcode:" SE27 9BQ" , contact_number: "020 8670 3200" , website: "www.floralhalllondon.co.uk/" , company_name: "Floral Hall" )
user8 = User.create!(name: "Claire Legg", email: "cl@gmail.com", role:"Supplier", password: "password1", house_number: "8" ,  road_name:  "Lamb's Conduit Passage" , postcode: "WC1R 4RG" , contact_number: "020 7375 1508", website: "www.forsfloristflower.co.uk", company_name: "Fords Florist Flower" )
user9 = User.create!(name: "Sam Jam", email: "sj@gmail.com", role:"Supplier", password: "password1", house_number: "44",  road_name: "Victoria", postcode: "W8 5RQ" , contact_number: "07514 178746 " , website:"www.petalon.co.uk" , company_name: "Petalon Flower Delivery" )
user10 = User.create!(name: "Derek Bing", email: "db@gmail.com", role:"Customer", password: "password1", house_number: "44" ,  road_name: "Victoria Road" , postcode: "W8 5RQ" , contact_number: "07500406744")
user11 = User.create!(name: "Louis Fish", email: "lf@gmail.com", role:"Customer", password: "password1", house_number: "44" ,  road_name: "Victoria Road", postcode: "W8 5RQ", contact_number: "07500406744")
user12 = User.create!(name: "Emma Sykes", email: "esy@gmail.com",role:"Customer",  password: "password1", house_number: "44" , road_name: "Victoria Road", postcode:  "W8 5RQ", contact_number: "07500406744")
user13 = User.create!(name: "Gareth Forbes", email: "gf@gmail.com",role:"Customer",  password: "password1", house_number: "44" , road_name: "Victoria Road", postcode:  "W8 5RQ", contact_number:  "07500406744")
user14 = User.create!(name: "Courtney Box", email: "cb@gmail.com", role:"Customer", password: "password1", house_number: "44" ,  road_name: "Victoria Road" , postcode: "W8 5RQ" , contact_number: "07500406744")
user15 = User.create!(name: "Ross Edwards", email: "re@gmail.com", role:"Customer", password: "password1", house_number: "44",  road_name: "Victoria Road", postcode: "W8 5RQ", contact_number: "07500406744")
user16 = User.create!(name: "Joey Dike", email: "jd@gmail.com", password: "password1", house_number: "44",  road_name: "Victoria Road", postcode: "W8 5RQ", contact_number: "07500406744")
user17 = User.create!(name: "Michael Fringe", email: "mf@gmail.com", role:"Customer", password: "password1", house_number: "44",  road_name: "Victoria Road", postcode: "W8 5RQ", contact_number: "07500406744")
user18 = User.create!(name: "Beth Collings", email: "bc@gmail.com",role:"Customer",  password: "password1", house_number:"44", road_name: "Victoria Road", postcode:"W8 5RQ", contact_number:"07500406744")
user19 = User.create!(name: "Nina Strong", email: "ns@gmail.com",role:"Customer",  password: "password1", house_number: "44" , road_name: "Victoria Road", postcode:  "W8 5RQ", contact_number:  "07500406744")
user20 = User.create!(name: "Lulu Jenkins", email: "lj@gmail.com", role:"Customer", password: "password1", house_number: "44" ,  road_name: "Victoria Road" , postcode: "W8 5RQ", contact_number: "07500406744")
user21 = User.create!(name: "Jody Weatherall", email: "jw@gmail.com", role: "Customer",  password: "password1", house_number: "44", road_name:  "Victoria Road", postcode: "W8 5RQ", contact_number: "07500406744")
user22 = User.create!(name: "Sean O'Connor", email: "so@gmail.com",role:"Customer",  password: "password1", house_number: "44" , road_name:  "Victoria Road", postcode:  "W8 5RQ", contact_number:  "07500406744")
user23 = User.create!(name: "Laura Zing", email: "lz@gmail.com", role:"Customer", password: "password1", house_number: "44" ,  road_name: "Victoria Road" , postcode: "W8 5RQ" , contact_number: "07500406744")
user24 = User.create!(name: "Jacob Cummings", email: "jc@gmail.com", role:"Customer", password: "password1", house_number: "44" ,  road_name: "Victoria Road" , postcode: "W8 5RQ" , contact_number: "07500406744")
user25 = User.create!(name: "Simon Orange", email: "sor@gmail.com",role:"Customer",  password: "password1", house_number: "44" , road_name:  "Victoria Road", postcode:  "W8 5RQ", contact_number:  "07500406744")
user26 = User.create!(name: "Erik Jan", email: "ej@gmail.com", role:"Customer", password: "password1", house_number: "44" ,  road_name: "Victoria Road" , postcode: "W8 5RQ" , contact_number: "07500406744")
user27 = User.create!(name: "Dominc Hacking", email: "dominichacking@gmail.com", role:"Admin", password: "Vansanten1", house_number: "44" ,  road_name: "Victoria Road" , postcode: "W8 5RQ" , contact_number: "07500406744")




bouquet1 = Bouquet.create!(bouquet_name: "Winterary & Wild", bouquet_description:"This bouquet of flowers were plucked from a lovely winter themed wedding between a young and lovely couple called Alex & Amy", price: 20.00, number_bouquets:"30", bouquet_image: "amywedding.jpg")
bouquet2 = Bouquet.create!(bouquet_name: "Homely Hydrangeas", bouquet_description:"Beautiful white Hydrangeas, in full bloom, to warm up your home on a cold day", price: 25.00, number_bouquets:"20", bouquet_image: "homelyhydrangeas.jpg")
bouquet3 = Bouquet.create!(bouquet_name: "Romantic Roses", bouquet_description:"Let the smell of roses drift through your home with this georgo", price: 15.00, number_bouquets:"30", bouquet_image: "romanticroses.jpg")












