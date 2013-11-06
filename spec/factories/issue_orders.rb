# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :issue_order do
    email "MyString"
    issue_id 1
  end
end
