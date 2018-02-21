FactoryBot.define do
  factory :bb do
    sequence(:name)   { |n| "#{n}" }
    sequence(:comment)  { |n| "comments#{n}." }
  end
end


#    validates :name, presence: true, length: { maximum: 20 }
#    validates :comment, presence: true, length: { maximum: 140 }