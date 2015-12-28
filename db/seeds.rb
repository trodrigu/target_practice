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
  { permutation: '#{@first_name}' },
  { permutation: '#{@last_name}' },
  { permutation: '#{@first_name}#{@last_name}' },
  { permutation: '#{@first_name}.#{@last_name}' },
  { permutation: '#{@fi}#{@last_name}' },
  { permutation: '#{@fi}.#{@last_name}' },
  { permutation: '#{@first_name}#{@li}' },
  { permutation: '#{@first_name}.#{@li}' },
  { permutation: '#{@fi}#{@li}' },
  { permutation: '#{@fi}.#{@li}' },
  { permutation: '#{@last_name}#{@first_name}' },
  { permutation: '#{@last_name}.#{@first_name}' },
  { permutation: '#{@last_name}#{@fi}' },
  { permutation: '#{@last_name}.#{@fi}' },
  { permutation: '#{@li}#{@first_name}' },
  { permutation: '#{@li}.#{@first_name}' },
  { permutation: '#{@li}#{@fi}' },
  { permutation: '#{@li}.#{@fi}' },
  { permutation: '#{@fi}#{@mi}#{@last_name}' },
  { permutation: '#{@fi}#{@mi}.#{@last_name}' },
  { permutation: '#{@first_name}#{@mi}#{@last_name}' },
  { permutation: '#{@first_name}.#{@mi}.#{@last_name}' },
  { permutation: '#{@first_name}#{@middle_name}#{@last_name}' },
  { permutation: '#{@first_name}.#{@middle_name}.#{@last_name}' },
  { permutation: '#{@first_name}-#{@last_name}' },
  { permutation: '#{@fi}-#{@last_name}' },
  { permutation: '#{@first_name}-#{@li}' },
  { permutation: '#{@fi}-#{@li}' },
  { permutation: '#{@last_name}-#{@first_name}' },
  { permutation: '#{@last_name}-#{@fi}' },
  { permutation: '#{@li}-#{@first_name}' },
  { permutation: '#{@li}-#{@fi}' },
  { permutation: '#{@fi}#{@mi}-#{@last_name}' },
  { permutation: '#{@first_name}-#{@mi}-#{@last_name}' },
  { permutation: '#{@first_name}-#{@middle_name}-#{@last_name}' },
  { permutation: '#{@first_name}_#{@last_name}' },
  { permutation: '#{@fi}_#{@last_name}' },
  { permutation: '#{@first_name}_#{@li}' },
  { permutation: '#{@fi}_#{@li}' },
  { permutation: '#{@last_name}_#{@first_name}' },
  { permutation: '#{@last_name}_#{@fi}' },
  { permutation: '#{@li}_#{@first_name}' },
  { permutation: '#{@li}_#{@fi}' },
  { permutation: '#{@fi}#{@mi}_#{@last_name}' },
  { permutation: '#{@first_name}_#{@mi}_#{@last_name}' },
  { permutation: '#{@first_name}_#{@middle_name}_#{@last_name}' }
])
puts 'CREATED CADENCES'
