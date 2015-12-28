# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

#TODO: Add permutation to account for portions of names ie. trodrigu@...
  cadences = Cadence.create([
    { permutation: '%{fn}' },
    { permutation: '%{ln}' },
    { permutation: '%{fn}%{ln}' },
    { permutation: '%{fn}.%{ln}' },
    { permutation: '%{fi}%{ln}' },
    { permutation: '%{fi}.%{ln}' },
    { permutation: '%{fn}%{li}' },
    { permutation: '%{fn}.%{li}' },
    { permutation: '%{fi}%{li}' },
    { permutation: '%{fi}.%{li}' },
    { permutation: '%{ln}%{fn}' },
    { permutation: '%{ln}.%{fn}' },
    { permutation: '%{ln}%{fi}' },
    { permutation: '%{ln}.%{fi}' },
    { permutation: '%{li}%{fn}' },
    { permutation: '%{li}.%{fn}' },
    { permutation: '%{li}%{fi}' },
    { permutation: '%{li}.%{fi}' },
    { permutation: '%{fi}%{mi}%{ln}' },
    { permutation: '%{fi}%{mi}.%{ln}' },
    { permutation: '%{fn}%{mi}%{ln}' },
    { permutation: '%{fn}.%{mi}.%{ln}' },
    { permutation: '%{fn}%{mn}%{ln}' },
    { permutation: '%{fn}.%{mn}.%{ln}' },
    { permutation: '%{fn}-%{ln}' },
    { permutation: '%{fi}-%{ln}' },
    { permutation: '%{fn}-%{li}' },
    { permutation: '%{fi}-%{li}' },
    { permutation: '%{ln}-%{fn}' },
    { permutation: '%{ln}-%{fi}' },
    { permutation: '%{li}-%{fn}' },
    { permutation: '%{li}-%{fi}' },
    { permutation: '%{fi}%{mi}-%{ln}' },
    { permutation: '%{fn}-%{mi}-%{ln}' },
    { permutation: '%{fn}-%{mn}-%{ln}' },
    { permutation: '%{fn}_%{ln}' },
    { permutation: '%{fi}_%{ln}' },
    { permutation: '%{fn}_%{li}' },
    { permutation: '%{fi}_%{li}' },
    { permutation: '%{ln}_%{fn}' },
    { permutation: '%{ln}_%{fi}' },
    { permutation: '%{li}_%{fn}' },
    { permutation: '%{li}_%{fi}' },
    { permutation: '%{fi}%{mi}_%{ln}' },
    { permutation: '%{fn}_%{mi}_%{ln}' },
    { permutation: '%{fn}_%{mn}_%{ln}' }
  ])
puts 'CREATED CADENCES'
