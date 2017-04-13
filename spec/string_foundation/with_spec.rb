# ==============================================================================
# SPEC - STRING FOUNDATION - VERSION
# ==============================================================================
describe '[ With Methods ]' do

  # ----------------------------------------------------------------------------
  # Without Leading Zeros
  # ----------------------------------------------------------------------------
  describe 'WITHOUT LEADING ZEROS ::' do
    context 'when a string has leading zeros,' do
      it 'should return a string removed leading zeros' do
        expect('0000123'.without_leading_zeros).to eq '123'
      end
    end

    context 'when a string has some zero characters,' do
      it 'should return a string removed only leading zeros' do
        expect('00001230000'.without_leading_zeros).to eq '1230000'
      end
    end

    context 'when a string like a floating point number has leading zeros,' do
      it 'should return a string removed only leading zeros and be a valid floating point number' do
        expect('000000.3'.without_leading_zeros).to eq '0.3'
      end
    end

    context 'when a string is "0",' do
      it 'should return the same string' do
        expect('0'.without_leading_zeros).to eq '0'
      end
    end

    context 'when a string has only zero characters,' do
      it 'should return a string "0"' do
        expect('00'.without_leading_zeros).to eq '0'
        expect('000'.without_leading_zeros).to eq '0'
        expect('0000'.without_leading_zeros).to eq '0'
        expect('00000'.without_leading_zeros).to eq '0'
      end
    end

    context 'when a string does not start with "0",' do
      it 'should return the same string' do
        random_text = RandomToken.gen(10, seed: :alphabet).without_leading_zeros
        expect(random_text).to eq random_text
      end
    end
  end


  # ----------------------------------------------------------------------------
  # Without Leading Zeros (Bang)
  # ----------------------------------------------------------------------------
  describe 'WITHOUT LEADING ZEROS (BANG) ::' do
    context 'when a string has leading zeros,' do
      it 'should be removed leading zeros' do
        string = '0000123'
        expect(string.without_leading_zeros!).to eq '123'
        expect(string).to eq '123'
      end
    end
  end

end
