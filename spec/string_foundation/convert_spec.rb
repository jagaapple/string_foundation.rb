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

      it { is_expected.to be true }
    end

    context 'when a string is "false",' do
      let(:string) { 'false' }

      it { is_expected.to be false }
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

      it { is_expected.to be true }
    end

    context 'when a string is "false",' do
      let(:string) { 'false' }

      it { is_expected.to be false }
    end

    context 'when a string is invalid,' do
      let(:string) { 'dummy' }

      it { is_expected_as_block.to raise_error(TypeError) }
    end

    context 'when a string is a positive integral number,' do
      let(:string) { '1' }

      it { is_expected.to be true }
    end

    context 'when a string is a negative integral number,' do
      let(:string) { '-1' }

      it { is_expected.to be false }
    end

    context 'when a string is a positive floating point number,' do
      let(:string) { '0.1' }

      it { is_expected.to be true }
    end

    context 'when a string is a negative floating point number,' do
      let(:string) { '-0.1' }

      it { is_expected.to be false }
    end

    context 'when a string is 0,' do
      let(:string) { '0' }

      it { is_expected.to be false }
    end

    context 'when a string is 0.0,' do
      let(:string) { '0.0' }

      it { is_expected.to be false }
    end

    context 'when a string is an empty string,' do
      let(:string) { '' }

      it { is_expected.to be false }
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

      it { is_expected.to eq(0) }
    end

    context 'when a string is "1",' do
      let(:string) { '1' }

      it { is_expected.to eq(1) }
    end

    context 'when a string is "000123",' do
      let(:string) { '000123' }

      it { is_expected.to eq(123) }
    end

    context 'when a string is "0.0",' do
      let(:string) { '0.0' }

      it { is_expected.to eq(0.0) }
    end

    context 'when a string is "000.00123",' do
      let(:string) { '000.00123' }

      it { is_expected.to eq(0.00123) }
    end

    context 'when a string is "true",' do
      let(:string) { 'true' }

      it { is_expected.to be true }
    end

    context 'when a string is "false",' do
      let(:string) { 'false' }

      it { is_expected.to be false }
    end

    context 'when a string is "dummy",' do
      let(:string) { 'dummy' }

      it { is_expected.to eq(string) }
    end

    context 'when a string is an empty string,' do
      let(:string) { '' }

      it { is_expected.to eq(nil) }
    end
  end


  # ----------------------------------------------------------------------------
  # Convert From Newline To Characters
  # ----------------------------------------------------------------------------
  describe 'CONVERT FROM NEWLINE TO CHARACTERS' do
    let(:string) { "We are Brushdown.\nWe are Brushdown." }
    let(:char) { '<br>' }
    subject { string.nl_to(char) }

    context 'when a string has newlines "\n",' do
      it { is_expected.to eq('We are Brushdown.<br>We are Brushdown.') }
    end

    context 'when a string has newlines "\r\n",' do
      let(:string) { "We are Brushdown.\r\nWe are Brushdown." }

      it { is_expected.to eq('We are Brushdown.<br>We are Brushdown.') }
    end

    context 'when a string does not have newlines,' do
      let(:string) { "We are Brushdown. We are Brushdown." }

      it { is_expected.to eq(string) }
    end

    context 'when an argument is not set,' do
      subject { string.nl_to() }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context 'when an argument is nil,' do
      let(:char) { nil }

      it { is_expected.to eq('We are Brushdown.We are Brushdown.') }
    end

    context 'when an argument is an empty string,' do
      let(:char) { '' }

      it { is_expected.to eq('We are Brushdown.We are Brushdown.') }
    end
  end


  # ----------------------------------------------------------------------------
  # Convert From Newline To <br>
  # ----------------------------------------------------------------------------
  describe 'CONVERT FROM NEWLINE TO `<br>`' do
    let(:string) { "We are Brushdown.\nWe are Brushdown." }
    subject { string.nl_to_br }

    context 'when a string has newlines "\n",' do
      it { is_expected.to eq('We are Brushdown.<br>We are Brushdown.') }
    end

    context 'when a string has newlines "\r\n",' do
      let(:string) { "We are Brushdown.\r\nWe are Brushdown." }

      it { is_expected.to eq('We are Brushdown.<br>We are Brushdown.') }
    end

    context 'when a string does not have newlines,' do
      let(:string) { "We are Brushdown. We are Brushdown." }

      it { is_expected.to eq(string) }
    end
  end

end
