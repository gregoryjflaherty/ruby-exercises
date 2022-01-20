#DONE
RSpec.describe 'All Pattern' do
  it 'all zeros' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to eq(true)
  end

  it 'not all zeros' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    words.each do |word|
      all_gone = true unless word != "gone"
    end
    expect(all_gone).to eq(true)
  end

  it 'not all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = false
    words.each do |word|
      all_gone = false unless word == "gone"
    end
    expect(all_gone).to eq(false)
  end

  it 'all empty' do
    strings = ["", "", "", "", "", "", ""]
    all_empty = false
    strings.each do |string|
      all_empty = true unless string != ""
    end
    expect(all_empty).to eq(true)
  end

  it 'not all empty' do
    strings = ["", "", "", "full", "", "", ""]
    all_empty = false
    strings.each do |string|
      string.length > 0 ? all_empty = true : all_empty = false
    end
    expect(all_empty).to eq(false)
  end

  it 'not all uppercase' do
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = true
    words.each do |word|
      word == word.upcase ? all_caps = false : all_caps = true
    end
    expect(all_caps).to eq(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    all_lies = false
    lies.each do |lie|
      lie == false ? all_lies = true : all_lies = false
    end
    expect(all_lies).to eq(true)
  end

  it 'all multiples of seven' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = false
    numbers.each do |number|
      number % 7 == 0 ? all_multiples_of_7 = true : all_multiples_of_7 = false
    end
    expect(all_multiples_of_7).to eq(true)
  end

  it 'not all 3 digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = true
    numbers.each do |number|
      all_3_digits = false unless number.to_s.length == 3
    end

    expect(all_3_digits).to eq(false)

  end

  it 'all four letter words' do
    words = ["love", "hate", "fire", "bird", "call"]
    all_4_letters = false
    words.each do |word|
      all_4_letters = true unless word.length != 4
    end
    expect(all_4_letters).to eq(true)
  end
end
