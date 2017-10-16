# ==============================================================================
# SPEC - STRING FOUNDATION - LENGTH
# ==============================================================================
# frozen_string_literal: true
describe "[ Length Methods ]" do
  let(:string) { "string" }
  let(:expected_length) { 0 }

  # ----------------------------------------------------------------------------
  # Compare Characters Length
  # ----------------------------------------------------------------------------
  describe "COMPARE CHARACTERS LENGTH" do
    subject { string.length?(expected_length) }

    context "when an argument is String class," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when characters length and argument are the same," do
      let(:expected_length) { string.length }

      it { is_expected.to be true }
    end

    context "when an argument is less than characters length," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be false }
    end

    context "when an argument is greater than characters length," do
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

  # ----------------------------------------------------------------------------
  # Compare Characters Length is Less Than Specified Number
  # ----------------------------------------------------------------------------
  describe "COMPARE CHARACTERS LENGTH IS LESS THAN SPECIFIED NUMBER" do
    subject { string.length_lt?(expected_length) }

    context "when an argument is String class," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Range class," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when argument is greater than character length," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be true }
    end

    context "when argument is less than character length," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be false }
    end

    context "when argument and character length is same," do
      let(:expected_length) { string.length }

      it { is_expected.to be false }
    end
  end

  # ----------------------------------------------------------------------------
  # Compare Characters Length is Less Than Equal Specified Number
  # ----------------------------------------------------------------------------
  describe "COMPARE CHARACTERS LENGTH IS LESS THAN EQUAL SPECIFIED NUMBER" do
    subject { string.length_lte?(expected_length) }

    context "when an argument is String class," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Range class," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when argument is greater than character length," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be true }
    end

    context "when argument is less than character length," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be false }
    end

    context "when argument and character length is same," do
      let(:expected_length) { string.length }

      it { is_expected.to be true }
    end
  end

  # ----------------------------------------------------------------------------
  # Compare Characters Length is Greater Than Specified Number
  # ----------------------------------------------------------------------------
  describe "COMPARE CHARACTERS LENGTH IS GREATER THAN SPECIFIED NUMBER" do
    subject { string.length_gt?(expected_length) }

    context "when an argument is String class," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Range class," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when argument is less than character length," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be true }
    end

    context "when argument is greater than character length," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be false }
    end

    context "when argument and character length is same," do
      let(:expected_length) { string.length }

      it { is_expected.to be false }
    end
  end

  # ----------------------------------------------------------------------------
  # Compare Characters Length is Greater Than Equal Specified Number
  # ----------------------------------------------------------------------------
  describe "COMPARE CHARACTERS LENGTH IS GREATER THAN EQUAL SPECIFIED NUMBER" do
    subject { string.length_gte?(expected_length) }

    context "when an argument is String class," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Range class," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when argument is less than character length," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be true }
    end

    context "when argument is greater than character length," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be false }
    end

    context "when argument and character length is same," do
      let(:expected_length) { string.length }

      it { is_expected.to be true }
    end
  end

end
