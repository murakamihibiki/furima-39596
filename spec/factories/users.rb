FactoryBot.define do
  factory :user do
    nickname {'ニックネーム'}
    first_name {'名'}
    last_name {'姓'}
    first_name_kana {'メイ'}
    last_name_kana {'セイ'}
    birth_date {'1930-02-04'}
    email {'test@example'}
    password {'pass123'}
        
  end
end
