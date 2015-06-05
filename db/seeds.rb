movie = Movie.create!(title: 'Kill Bill',
                     director: 'Quentin Tarantino',
                     runtime_in_minutes: 111,
                     description: 'swords and stuff',
                     poster_image_url: 'http://41.media.tumblr.com/9b201c1fffdae0a3b20d960c54cb66fd/tumblr_nfcxe0bYOJ1tr5s6io1_1280.jpg',
                     release_date: '2003-10-17')

user = User.create!(email: 'bob@email.com',
                    password: 'password',
                    firstname: 'Bob',
                    lastname: 'Bobson')

movie.reviews.create!(user_id: user.id,
                               text: 'Good movie, bro',
                               rating_out_of_ten: 10)

