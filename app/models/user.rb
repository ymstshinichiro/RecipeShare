# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  validates :name,
    presence: true,
    length: { maximum: 20 }

  validates :email,
    presence: true,
    uniqueness: true,
    length: { maximum: 250 },
    format: {
      with: /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/,
      message: '有効なメールアドレスを入力してください'    
    }
  
    validates :password,
      length: { minimum: 5 },
      format: {
        with: /[0-9a-zA-Z]/,
        message: '5文字以上で入力。半角英数のみ使用可能です(記号はNG)'    
      }
  
end
