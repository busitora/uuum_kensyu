require 'faker'

99.times do
  Task.create!(
      name: Faker::JapaneseMedia::OnePiece.unique.character,
      description: Faker::JapaneseMedia::OnePiece.quote,
      limit: Faker::Time.between(from: DateTime.now + 10, to: DateTime.now),
      status: rand(0..2),
      priority: rand(0..3)
  # TODO: 優先順位とラベルとユーザー
  )
end
