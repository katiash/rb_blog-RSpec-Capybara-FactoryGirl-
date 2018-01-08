#WRITE OUR FACTORY....!

# AFTER ADDING FactoryGirl gem and modifying the spec/rails_helper.rb file:
#Create the following factory post.rb file (in spec/factories/post.rb):

FactoryGirl.define do
    factory :post do
        title "My Title"
        body "My Body"
    end
end

# GO INTO THE previously created for CapyBara spec/features/add_posts_spec.rb and 
# make the needed modifications (already made in that file and others commented out).


