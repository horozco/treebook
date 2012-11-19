require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "verify the login path" do
	  	get '/login'
	  	assert_response :success
	end

	test "verify the logout path" do
	  	get '/logout'
	  	assert_response :redirect
	  	assert_redirected_to '/'
	end

end  	