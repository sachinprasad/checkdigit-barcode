require 'spec_helper'
describe '#barcode' do
  it 'should return check digit appended to 978014300723' do
    expect(barcode(978014300723).to eq "9780143007234"
  end
end

describe '#isbn13_check_digit' do
  it 'should should return check digit of 978014300723' do
    expect(isbn13_check_digit(978014300723)).to eq 4
  end
end
