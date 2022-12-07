require 'faker'
class MyController < ApplicationController
  def show
    @row=[]
    #communications_fill
    #opers_fill
    #abonents_fill
    phones_fill
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

  # def opers_fill
  #   100_000.times do
  #     @row << {name: Faker::Company.name, code: Faker::Number.number(digits:3),
  #     quantity_mln: rand(200)+Faker::Number.decimal(l_digits: 0, r_digits: 1)}
  #   end
  #   Oper.insert_all(@row)
  #   @row=[]
  # end


  # def abonents_fill    
  #   1000.times do
  #     @row << {name: Faker::Name.name, passport: Faker::Number.number(digits:10),
  #        address: [Faker::Address.city, Faker::Address.street_name] }
  #   end
  #   Abonent.insert_all(@row)
  #   @row=[]
  # end

  def phones_fill
    models=['Samsung', 'Xiaomi', 'Apple', 'Nokia', 'LG', 'Huawei', 'Vivo', 'Asus', 'Alcatel', 'Oppo']
    100_000.times do
      @row << { number: ('89'+ Faker::Number.number(digits:9).to_s).to_i,
                spec: {"model" => models[rand(10)], "year" => Faker::Number.between(from: 2000, to: 2020).to_s,
                  "country" => Faker::Address.country}.to_json }
    end
    Phone.insert_all(@row)
    @row=[]
  end
end
