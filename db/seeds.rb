# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Page.delete_all
# . . .
Page.create(:title => 'Programming Ruby 1.9',
:permalink =>' ',
:body =>
  %{<p>
    Ruby is the fastest growing and most exciting dynamic language
    out there. If you need to get working programs delivered fast,
    you should add Ruby to your toolbox.
  </p>},
  :created_at => '11/04/2012',
  :updated_at => '12/04/2012')

