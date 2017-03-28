class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,  :validatable
  
    validates :username,:presence => true,:uniqueness => { :case_sensitive => false }

#      validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/
    has_many :articles 
 end

