class Contact < ActiveRecord::Base
  #validate :add_error
  validates :title, presence: true
  validates :content, presence: true
  #validates :tel, presence: true, numericality: { only_integer: true }, length: { in: 10..11 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX, on: :create }

  #def add_error
    # nameが空のときにエラーメッセージを追加する
   # if title.empty?
   #   errors.add(:title, "に関係するエラーを追加")
   #   errors[:base] << "モデル全体に関係するエラーを追加"
   # end
  #end

end
