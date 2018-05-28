# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'securerandom'

Vehicle.delete_all
Spotting.delete_all
User.delete_all


user = User.create(
  [
    {
      device_id: "#{random_string=SecureRandom.hex}",
      name: 'Pepito',
      lat: 44.8473552,
      lng: -0.5774067
    },
    {
      device_id: "#{random_string=SecureRandom.hex}",
      name: 'Joan',
      lat: 44.8473752,
      lng: -0.5774267
    },
    {
      device_id: "#{random_string=SecureRandom.hex}",
      name: 'Gabriel',
      lat: 44.8473652,
      lng: -0.5773867
    }
  ]
)

vehicle = Vehicle.create(
  [
    {
      immat: 'BW-941-YG',
      lat: 44.8473652,
      lng: -0.5774067,
      status: 'en zone parcmètre',
      user_id: 1
    },
    {
      immat: 'GX-320-AA',
      lat: 44.8472652,
      lng: -0.5774867,
      status: 'hors danger',
      user_id: 3
    }
  ]
)

spotting = Spotting.create(
  [
    {
      lat: 44.8473612,
      lng: -0.5774127,
      direction: 160,
      user_id: 2
    },
    {
      lat: 44.8472702,
      lng: -0.5774817,
      direction: 15,
      user_id: 3
    }
  ]
)
