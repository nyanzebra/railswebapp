require 'test_helper'

class UpcDescriptionTest < ActiveSupport::TestCase
  # test 'the truth' do
  #   assert true
  # end

  test 'have correct count: total' do
  	assert_equal UpcDescription.count, 2, 'ERROR:  Incorrect amount in database'
  end

  test 'have correct count: search' do
  	example = UpcDescription.find_by_sql("SELECT * FROM upc_descriptions JOIN products ON upc = upc_description_id WHERE fit = 'stretch'")
  	assert_equal example.count, 2, 'ERROR:  Incorrect amount in database'
  end

  test 'search function upc' do
    example = UpcDescription.search('Men', nil)
    assert_equal example.count, 2, 'ERROR: search function failed'
  end

  test 'upc_description in database' do
    example = UpcDescription.find_by_sql('SELECT * FROM upc_descriptions WHERE upc = 051071851756')
    assert_includes example, upc_descriptions(:wrangler_upc), 'ERROR: upc does not exist in database'
  end
end
