require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'product is in database' do
    example = products(:wrangler1)
    product = Product.find_by_sql('SELECT * FROM products WHERE serial_num = 1 AND upc_description_id = 051071851756')
    assert_includes product, example, 'ERROR:	Product was not in database'
  end

  test 'have correct count' do
    assert_equal Product.count, 4, 'ERROR: Incorrect amount in database'
  end

  test 'product is not in database' do
    example = Product.find_by_sql('SELECT * FROM products WHERE id = 1')
    assert_equal example, [], 'ERROR: Product is in database'
  end

  test 'product is in warehouse' do
    example = products(:wrangler2)
    assert_equal example.location, 'warehouse', 'ERROR: Product is in wrong location'
  end

  test 'product search: location' do
    example = Product.search('warehouse', nil)
    assert_equal example.count, 2, 'ERROR: search function failed'
  end

  test 'product search: num' do
    example = Product.search('', 2)
    assert_equal example.count, 2, 'ERROR: search function failed'
  end

end
