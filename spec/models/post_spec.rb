require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before(:all)do # "before" and "(:all)" ensures we have available throughout the process the object of Post class
    @post = Post.new(body: "My Body", title: "My Title")# can put in anything you like here.
  end
  # 1st Goal: make the test FAIL initial test
  # 2nd Goal: make the test PASS
  # 3rd Goal: refactor the test code if necessary
  #Write these as documentation, which is why syntax is just so:
  it "should have a matching body" do
    # I expect my @post.body to equal "Your Body"
    # expect(@post.body).to eq("Your Body") # Will fail, because it is not matching our @post body above.
    expect(@post.body).to eq("My Body") # Will pass, because it is now matching our @post body above.
  end
  it "should have a matching title" do
    # expect(@post.title).to eq("Your Title") # Will fail, because it is not matching our @post title above.
    expect(@post.title).to eq("My Title") # Will pass, because it is not matching our @post title above.
  end
end

#Run your tests on the spec/models/post_spec.rb directly, to save time, so that rspec
#immediately gets to and runs your test you are working on...
#(vs just running command "rspec", - bad practice)
# So:
# rspec spec/models/post_spec.rb