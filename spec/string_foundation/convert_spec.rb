# ==============================================================================
# SPEC - STRING FOUNDATION - CONVERT
# ==============================================================================
# frozen_string_literal: true
describe '[ Convert Methods ]' do

  # ----------------------------------------------------------------------------
  # Convert To TrueClass Or FalseClass
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO TRUECLASS OR FALSE CLASS' do
    let(:string) { nil }
    subject { string.to_bool }

    context 'when a string is "true",' do
      let(:string) { 'true' }

      it { is_expected.to eq true }
    end

    context 'when a string is "false",' do
      let(:string) { 'false' }

      it { is_expected.to eq false }
    end

    context 'when a string is invalid,' do
      let(:string) { 'dummy' }

      it { is_expected_as_block.to raise_error(TypeError) }
    end
  end


  # ----------------------------------------------------------------------------
  # Convert A BOOLY STRING To TrueClass Or FalseClass
  # ----------------------------------------------------------------------------
  describe 'CONVERT A BOOLY STRING TO TRUECLASS OR FALSE CLASS' do
    let(:string) { nil }
    subject { string.to_booly }

    context 'when a string is "true",' do
      let(:string) { 'true' }

      it { is_expected.to eq true }
    end

    context 'when a string is "false",' do
      let(:string) { 'false' }

      it { is_expected.to eq false }
    end

    context 'when a string is invalid,' do
      let(:string) { 'dummy' }

      it { is_expected_as_block.to raise_error(TypeError) }
    end

    context 'when a string is a positive integral number,' do
      let(:string) { '1' }

      it { is_expected.to eq true }
    end

    context 'when a string is a negative integral number,' do
      let(:string) { '-1' }

      it { is_expected.to eq false }
    end

    context 'when a string is a positive floating point number,' do
      let(:string) { '0.1' }

      it { is_expected.to eq true }
    end

    context 'when a string is a negative floating point number,' do
      let(:string) { '-0.1' }

      it { is_expected.to eq false }
    end

    context 'when a string is 0,' do
      let(:string) { '0' }

      it { is_expected.to eq false }
    end

    context 'when a string is 0.0,' do
      let(:string) { '0.0' }

      it { is_expected.to eq false }
    end

    context 'when a string is an empty string,' do
      let(:string) { '' }

      it { is_expected.to eq false }
    end
  end


  # ----------------------------------------------------------------------------
  # Convert To Proper Class From String
  # ----------------------------------------------------------------------------
  describe 'CONVER TO PROPER CLASS FROM STRING' do
    let(:string) { nil }
    subject { string.to_pretty }

    context 'when a string is "0",' do
      let(:string) { '0' }

      it { is_expected.to eq 0 }
    end

    context 'when a string is "1",' do
      let(:string) { '1' }

      it { is_expected.to eq 1 }
    end

    context 'when a string is "000123",' do
      let(:string) { '000123' }

      it { is_expected.to eq 123 }
    end

    context 'when a string is "0.0",' do
      let(:string) { '0.0' }

      it { is_expected.to eq 0.0 }
    end

    context 'when a string is "000.00123",' do
      let(:string) { '000.00123' }

      it { is_expected.to eq 0.00123 }
    end

    context 'when a string is "true",' do
      let(:string) { 'true' }

      it { is_expected.to eq true }
    end

    context 'when a string is "false",' do
      let(:string) { 'false' }

      it { is_expected.to eq false }
    end

    context 'when a string is "dummy",' do
      let(:string) { 'dummy' }

      it { is_expected.to eq string }
    end

    context 'when a string is an empty string,' do
      let(:string) { '' }

      it { is_expected.to eq nil }
    end
  end

end
