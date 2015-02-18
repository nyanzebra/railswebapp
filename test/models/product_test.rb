require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "product is in database" do
    example = products(:wrangler)
    product = Product.find(1)
    assert_same example, product, "Product was not in test data"
  end
end
