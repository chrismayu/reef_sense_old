# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :watcher do
    reef_tank_id 1
    params "MyText"
    updated_reason 1
    reef_tank_arduino_id "MyString"
    main_light false
    ato_pump false
    chiller false
    refuge_light false
    skimmer false
    main_pump false
    heater false
    powerhead false
    temp "9.99"
    ambeint_temp "9.99"
    ph_level 1
  end
end
