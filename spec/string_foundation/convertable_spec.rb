# ==============================================================================
# SPEC - STRING FOUNDATION - CONVERTABLE
# ==============================================================================
describe '[ Convertable Methods ]' do

  # ----------------------------------------------------------------------------
  # Check Convertable To Integer
  # ----------------------------------------------------------------------------
  describe 'CHECK CONVERTABLE TO INTEGER' do
    let(:string) { nil }
    subject { string.to_i? }

    context 'when a string is an integral number,' do
      context 'and it is a positive number,' do
        let(:string) { '123' }

        it { is_expected.to eq true }
      end

      context 'and it is a positive number with a sign,' do
        let(:string) { '+123' }

        it { is_expected.to eq true }
      end

      context 'and it is a negative number,' do
        let(:string) { '-5' }

        it { is_expected.to eq true }
      end
    end

    context 'when a string is a floating point number,' do
      context 'and it is a positive number,' do
        let(:string) { '0.123' }

        it { is_expected.to eq true }
      end

      context 'and it is a positive number with a sign,' do
        let(:string) { '+0.123' }

        it { is_expected.to eq true }
      end

      context 'and it is a negative number,' do
        let(:string) { '-5.123' }

        it { is_expected.to eq true }
      end
    end

    context 'when a string is a floating point number without an integer,' do
      context 'and it is a positive number,' do
        let(:string) { '.123' }

        it { is_expected.to eq true }
      end

      context 'and it is a positive number with a sign,' do
        let(:string) { '+.123' }

        it { is_expected.to eq true }
      end

      context 'and it is a negative number,' do
        let(:string) { '-.123' }

        it { is_expected.to eq true }
      end
    end

    context 'when a string a number has leading zeros,' do
      context 'and it is a positive number,' do
        let(:string) { '00000123' }

        it { is_expected.to eq true }
      end

      context 'and it is a positive number with a sign,' do
        let(:string) { '+00000123' }

        it { is_expected.to eq true }
      end

      context 'and it is a negative number,' do
        let(:string) { '-00000123' }

        it { is_expected.to eq true }
      end
    end

    context 'when a string is not a number,' do
      let(:string) { 'abc' }

      it { is_expected.to eq false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Convertable To Float
  # ----------------------------------------------------------------------------
  describe 'CHECK CONVERTABLE TO FLOAT' do
    let(:string) { nil }
    subject { string.to_f? }

    context 'when a string is an integral number,' do
      context 'and it is a positive number,' do
        let(:string) { '123' }

        it { is_expected.to eq true }
      end

      context 'and it is a positive number with a sign,' do
        let(:string) { '+123' }

        it { is_expected.to eq true }
      end

      context 'and it is a negative number,' do
        let(:string) { '-5' }

        it { is_expected.to eq true }
      end
    end

    context 'when a string is a floating point number,' do
      context 'and it is a positive number,' do
        let(:string) { '0.123' }

        it { is_expected.to eq true }
      end

      context 'and it is a positive number with a sign,' do
        let(:string) { '+0.123' }

        it { is_expected.to eq true }
      end

      context 'and it is a negative number,' do
        let(:string) { '-5.123' }

        it { is_expected.to eq true }
      end
    end

    context 'when a string is a floating point number without an integer,' do
      context 'and it is a positive number,' do
        let(:string) { '.123' }

        it { is_expected.to eq true }
      end

      context 'and it is a positive number with a sign,' do
        let(:string) { '+.123' }

        it { is_expected.to eq true }
      end

      context 'and it is a negative number,' do
        let(:string) { '-.123' }

        it { is_expected.to eq true }
      end
    end

    context 'when a string a number has leading zeros,' do
      context 'and it is a positive number,' do
        let(:string) { '00000123' }

        it { is_expected.to eq true }
      end

      context 'and it is a positive number with a sign,' do
        let(:string) { '+00000123' }

        it { is_expected.to eq true }
      end

      context 'and it is a negative number,' do
        let(:string) { '-00000123' }

        it { is_expected.to eq true }
      end
    end

    context 'when a string is not a number,' do
      let(:string) { 'abc' }

      it { is_expected.to eq false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Convertable To Boolean
  # ----------------------------------------------------------------------------
  describe 'CHECK CONVERTABLE TO BOOLEAN' do
    let(:string) { nil }
    subject { string.to_bool? }

    context 'when a string is "true",' do
      let(:string) { 'true' }

      it { is_expected.to eq true }
    end

    context 'when a string is "false",' do
      let(:string) { 'false' }

      it { is_expected.to eq true }
    end

    context 'when a string is an empty,' do
      let(:string) { '' }

      it { is_expected.to eq false }
    end

    context 'when a string is a positive number,' do
      let(:string) { '1' }

      it { is_expected.to eq false }
    end

    context 'when a string is a negative number,' do
      let(:string) { '-1' }

      it { is_expected.to eq false }
    end

    context 'when a string is not a number,' do
      let(:string) { 'abc' }

      it { is_expected.to eq false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Convertable To Booly
  # ----------------------------------------------------------------------------
  describe 'CHECK CONVERTABLE TO BOOLYs' do
    let(:string) { nil }
    subject { string.to_booly? }

    context 'when a string is "true",' do
      let(:string) { 'true' }

      it { is_expected.to eq true }
    end

    context 'when a string is "false",' do
      let(:string) { 'false' }

      it { is_expected.to eq true }
    end

    context 'when a string is an empty,' do
      let(:string) { '' }

      it { is_expected.to eq true }
    end

    context 'when a string is a positive number,' do
      let(:string) { '1' }

      it { is_expected.to eq true }
    end

    context 'when a string is a negative number,' do
      let(:string) { '-1' }

      it { is_expected.to eq true }
    end

    context 'when a string is not a number,' do
      let(:string) { 'abc' }

      it { is_expected.to eq false }
    end
  end

end
