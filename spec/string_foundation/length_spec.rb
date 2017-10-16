# ==============================================================================
# SPEC - STRING FOUNDATION - LENGTH
# ==============================================================================
# frozen_string_literal: true
describe "[ Length Methods ]" do

  # ----------------------------------------------------------------------------
  # Compare Characters Length
  # ----------------------------------------------------------------------------
  describe "COMPARE CHARACTERS LENGTH" do
    let(:string) { "string" }
    let(:expected_length) { 0 }
    subject { string.length?(expected_length) }

    context "when a argument is String class," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when characters length and argument are the same," do
      let(:expected_length) { string.length }

      it { is_expected.to be true }
    end

    context "when argument are less than characters length," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be false }
    end

    context "when argument are greater than characters length," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be false }
    end

    context "when characters length are middle of range of argument," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected.to be true }
    end

    context "when characters length are lower limit of range of argument," do
      let(:expected_length) { string.length..(string.length + 1) }

      it { is_expected.to be true }
    end

    context "when characters length are upper limit of range of argument," do
      let(:expected_length) { (string.length - 1)..string.length }

      it { is_expected.to be true }
    end

    context "when characters length is greater than range," do
      let(:expected_length) { (string.length - 2)..(string.length - 1) }

      it { is_expected.to be false }
    end

    context "when characters length is less than range," do
      let(:expected_length) { (string.length + 1)..(string.length + 2) }

      it { is_expected.to be false }
    end
  end

end
