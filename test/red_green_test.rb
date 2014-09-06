class RedGreenTest < Minitest::Test
  def test_truth
    assert true
  end

  def test_false
    refute true
  end

  def test_skip
    skip
  end

  def test_error
    raise 'hell'
  end
end
