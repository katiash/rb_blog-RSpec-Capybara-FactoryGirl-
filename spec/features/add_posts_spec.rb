# For Factory Girl, will comment some of the previous code out, 
# to let it use Factory Girl code...

require 'rails_helper'

RSpec.feature "adding posts" do
    scenario "allow a user to add a post" do

        # ADDED FOR FG:
        # post = create(:post) #THIS says to CALL OUR FACTORY to do this!
        
        # CAN ALSO CREATE LIKE THIS (so we are not necessarily stuck with what's in the factory file:
        # (i.e. in spec/factories/post.rb)
        post = create(:post, title: "My other title") #THIS says to CALL OUR FACTORY to do this!
        
        # GOT RID OF BELOW FOR FG!
        # visit new_post_path
        
        # fill_in "Title", with: "My Title"
        # fill_in "Body", with: "My Body" 

        # the fill_in "" text has to be Capitalized for Capybara to find label/field.
        # this is opposite in the template actually. Don't capitalize, or it won't find.

        # click_on("Create Post")

        #ADDED INSTEAD (FOR FG):
        visit post_path(post)

        # SO TO MAKE GREEN AGAIN, CHANGE WHAT'S EXPECTED TOO:
        # expect(page).to have_content("My Title")
        expect(page).to have_content("My other title")
        expect(page).to have_content("My Body")
    end
end

# First Capybara specific Error will be due to not found Title element:

    # Failure/Error: fill_in "Title", with: "My Title"
    # Capybara::ElementNotFound:
    #     Unable to find visible field "Title" that is not disabled

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    # THIS IS WHAT rspec GENERATED when we created controller in spec/controller folder 
# (in the posts_controller_spec.rb file):
#=======================================================
# require 'rails_helper'

# RSpec.describe PostsController, type: :controller do

# end
#=======================================================
