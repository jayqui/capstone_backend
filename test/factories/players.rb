FactoryBot.define do
  factory :player do
    name { "Megan Rapinoe" }
    email { "megan@goat.futbol" }
    password_digest { "MyString" }
    address { "123 Greatest Dr." }
    position { "greatest evah" }
    dob { "1985-07-05" }
    level { "too legit" }
    admin { false }
  end
end
