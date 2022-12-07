require 'faker'
class MyController < ApplicationController
  def show
    @row=[]
    #communications_fill
    opers_fill
  end

  # def communications_fill
  #       tArr=['ПРОСТОЙ', 'МЕЧТАЙ', 'КАЧАЙ', 'ЛЕТАЙ', 'СЛОН']
  #       150_000.times do
  #           @row << {number: Faker::Number.number(digits:5), tariff_plan: tArr[rand(5)],
  #           debt: Faker::Number.number(digits:4)*rand(2),
  #           date: Faker::Date.between(from: '2012-12-01', to: '2022-12-01') }
  #       end
  #       Communication.insert_all(@row)
  #       @row=[]
  # end

  def opers_fill
    100_000.times do
      @row << {name: Faker::Company.name, code: Faker::Number.number(digits:3),
      quantity_mln: rand(200)+Faker::Number.decimal(l_digits: 0, r_digits: 1)}
    end
    Oper.insert_all(@row)
    @row=[]
  end

=begin
  def abonents_fill
    100_000.times do
      @row << {name: Faker::Name.name, passport: Faker::Russian.passport,
         adress: }

  end
=end

end
