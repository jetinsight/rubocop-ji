require "test_helper"

class RuboCop::JiTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RuboCop::Ji::VERSION
  end

  def test_that_code_is_rejected
    expect_offense(<<~RUBY)
      ENV['SHELL']
    RUBY
  end
end
