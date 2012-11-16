require 'test_helper'

#class UserTest < ActiveSupport::TestCase
#  test "a user should enter a first name" do
#     user = User.new
#     user.email = "prueba@domain.com"
#     user.password = "123456"
#     assert user.save
#  end

class UserTest < ActiveSupport::TestCase
  test "a user should enter a first name" do
     user = User.new
     assert !user.save
     assert !user.errors[:first_name].empty?
  end

  test "a user should enter a last name" do
     user = User.new
     assert !user.save
     assert !user.errors[:last_name].empty?
  end

  test "a user should enter a profile name" do
     user = User.new
     assert !user.save
     assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique profile name" do
     user = User.new
     user.first_name = "Hernan"
     user.last_name = "Hernan"
     user.email = "Hernan"
     user.password = "Hernan"
     user.password_confirmation = "Hernan"
     user.profile_name = "name"
     #puts user.errors.inspect
     assert !user.save
     #assert !user.errors[:profile_name].empty?
  end

end
