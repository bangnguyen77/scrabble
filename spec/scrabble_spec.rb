require('rspec')
require('scrabble')

describe('String#scrabble') do

  it('returns 1 for a letter A') do
    expect("A".scrabble()).to(eq(1))
  end

  it('returns 1 for a letter a') do
    expect("a".scrabble()).to(eq(1))
  end

  it('returns 2 for letter D') do
    expect('D'.scrabble()).to(eq(2))
  end

  it('returns 2 for letter g') do
    expect('g'.scrabble()).to(eq(2))
  end

  it('returns 3 for letter b') do
    expect('b'.scrabble()).to(eq(3))
  end

  it('returns 4 for letter f') do
    expect('f'.scrabble()).to(eq(4))
  end

  it('returns 5 for letter k') do
    expect('k'.scrabble()).to(eq(5))
  end

  it('returns 8 for letter j') do
    expect('j'.scrabble()).to(eq(8))
  end

  it('returns 10 for letter q') do
    expect('q'.scrabble()).to(eq(10))
  end

  it('returns 5 for word: add') do
    expect("add".scrabble()).to(eq(5))
  end

  it('returns 26 for word: quixotic') do
    expect("quixotic".scrabble()).to(eq(26))
  end

  it('returns 16 for word: xj') do
    expect("xj".scrabble()).to(eq(16))
  end

end
