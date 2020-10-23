require 'faker'
@prince = Artist.create(name: 'Prince', bio: Faker::Music::Prince.lyric)
@kpop = Genre.create(name: 'K-Pop')
10.times do
  @genre = Genre.create(name: Faker::Music.genre)
  Song.create(name: Faker::Music::Prince.song, artist: @prince, genre: @genre)
  Song.create(name: Faker::Quote.singular_siegler, artist: Artist.create(name: Faker::Kpop.iii_groups, bio: Faker::Lorem.sentence), genre: @kpop)
  Song.create(name: Faker::Quote.singular_siegler, artist: Artist.create(name: Faker::Music.band, bio: Faker::Lorem.sentence), genre: Genre.create(name: Faker::Music.genre))
end