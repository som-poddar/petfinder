  require 'colored'
  require 'json'
  include Petfinder

  PetFinder_APIKey = '581173586803ecaa6df896de000f9596'
  PetFinder_APISecret = '066903afd587f6675b2f93c12ecb4e85'
  
  def print_border
    puts
    puts "#{'-' * 50 }".yellow
    puts
  end

  petfinder = Petfinder::Client.new(PetFinder_APIKey, PetFinder_APISecret)
  puts 'preparing to invoke PetFinder API'.green
  print_border
  shelter = petfinder.shelter('CA123')
  puts JSON.pretty_generate(shelter.to_h)





