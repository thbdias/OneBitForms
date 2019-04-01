FactoryBot.define do
  factory :form do
    #       module::classe.metodo
    title { FFaker::Lorem.word }
    description { FFaker::Lorem.word }
    user
    primary_color { "##{FFaker::Color.hex_code}" }
    enable { FFaker::Boolean.maybe }
  end
end
