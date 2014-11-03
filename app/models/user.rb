class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :address
  has_many :work
  accepts_nested_attributes_for :address,  :allow_destroy => true
  accepts_nested_attributes_for :work,  :allow_destroy => true

  validates :contact_no , :length => { :minimum => 10, :maximum => 10 }
end
