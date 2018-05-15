require 'test_helper'

class WikiTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  let(:wiki) { Wiki.create!(title: "New Wiki Title", body: "New Wiki Body") }

  test "the attributes of the model" do
    it "has title and body attributes" do
      expect(wiki).to have_attributes(title: "New Wiki Title", body: "New Wiki Body")
    end
  end
end
