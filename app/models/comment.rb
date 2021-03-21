class Comment < ApplicationRecord
  belongs_to :prototype  # テーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
  validates :text, presence: true
end
