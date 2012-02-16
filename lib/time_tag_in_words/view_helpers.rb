module TimeTagInWords
  module ViewHelpers

    def time_tag_in_words(time)
      suffix = time > Time.now ? "from now" : "ago"
      content_tag :time, :datetime => time.to_s(:db),
                         :title => time.to_s(:long_ordinal) do
        [distance_of_time_in_words_to_now(time), suffix] * ' '
      end
    end
  end
end
