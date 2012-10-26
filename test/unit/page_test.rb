require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Page attributes must not be empty" do
       page = Page.new
       assert page.invalid?
       assert page.errors[:title].any?
       assert page.errors[:permalink].any?
       assert page.errors[:body].any?
       assert page.errors[:created_at].any?
   #    assert page.errors[:updated_at].any?
     end
test "Page is not valid without a unique title" do
cms = Page.new(:title => pages(:third).title, :permalink =>"permalinkIn page_test file", :body => pages(:third).body, :created_at =>"02/03.2012", :updated_at =>"02/04/2012")
assert !cms.save
assert_equal "has already been taken",cms.errors[:title].join("; ")
end
end
