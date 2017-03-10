require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
    
    def setup
        @category = Category.create(name: "Sports")
        @user = User.create(username: "john", email: "john@example.com", password: "anakmama", admin: true)
    end
 
   test "Should get category index" do
       get :index
       assert_response :success
   end
   
   test "Should get new" do
       session[:user_id] = @user.id
       get :new
       assert_response :success
   end
   
   test "Should get show" do
       get(:show, {'id' => @category.id})
       assert_response :success
   end
   
   test "Should redirect when admin not logged in" do
       assert_no_difference 'Category.count' do
           post :create, category: {name: "sports"}
       end
       assert_redirected_to categories_path
   end
    
end