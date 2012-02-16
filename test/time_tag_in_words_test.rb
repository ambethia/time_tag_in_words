require 'test_helper'

class TimeTagInWordsTest < ActionView::TestCase
  include TimeTagInWords::ViewHelpers

  test "is a time tag" do
    assert_match /<time.*>.*<\/time>/, time_tag_in_words(Time.now)
  end

  test "uses 'ago' for the past" do
    assert_match /2 hours ago/, time_tag_in_words(2.hours.ago)
  end

  test "uses 'from now' for the future" do
    assert_match /2 hours from now/, time_tag_in_words(2.hours.from_now)
  end

  test "uses 'ago' for right now" do
    assert_match /less than a minute ago/, time_tag_in_words(Time.now)
  end
end
