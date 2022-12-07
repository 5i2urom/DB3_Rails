class ApplicationController < ActionController::Base
    require 'faker'
    @row=[]


    def communications_fill
        tArr=['ПРОСТОЙ', 'МЕЧТАЙ', 'КАЧАЙ', 'ЛЕТАЙ', 'СЛОН']
        1000.times do
            Communication.insert (number: Faker::Number.number(digits:5), tariff_plan: tArr[rand(5)],
            debt: Faker::Number.number(digits:4)*rand(1),
            date: Faker::Date.between(from: '2022-12-01', to: '2012-12-01') )
        end
    end
end
