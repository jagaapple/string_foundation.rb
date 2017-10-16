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
      let(:expected_length) { "6" }

      it { is_expected_as_block.to raise_error ArgumentError }
    end

    context "when characters length and argument are the same," do
      let(:expected_length) { 6 }

      it { is_expected.to be true }
    end

    context "when characters length and argument are not the same," do
      let(:expected_length) { 5 }

      it { is_expected.to be false }
    end

    context "when characters length are within range of argument `1..10`," do
      let(:expected_length) { 1..10 }

      it { is_expected.to be true }
    end

    context "when characters length are within range of argument `6..10`," do
      let(:expected_length) { 6..10 }

      it { is_expected.to be true }
    end

    context "when characters length are within range of argument `1..6`," do
      let(:expected_length) { 1..6 }

      it { is_expected.to be true }
    end

    context "when characters length are out of range of argument `1..5`," do
      let(:expected_length) { 1..5 }

      it { is_expected.to be false }
    end

    context "when characters length are out of range of argument `7..10`," do
      let(:expected_length) { 7..10 }

      it { is_expected.to be false }
    end
  end

end
