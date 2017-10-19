# ==============================================================================
# SPEC - STRING FOUNDATION - LENGTH
# ==============================================================================
# frozen_string_literal: true
describe "[ Length Methods ]" do
  let(:string) { "string" }
  let(:expected_length) { 0 }

  # ----------------------------------------------------------------------------
  # Check Whether Characters Length Is A Specific Number
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER CHARACTERS LENGTH IS A SPECIFIC NUMBER ::" do
    subject { string.length?(expected_length) }

    context "when an argument is String," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Integer," do
      context "characters length is equal to an argument," do
        let(:expected_length) { string.length }

        it { is_expected.to be true }
      end

      context "characters length is less than an argument," do
        let(:expected_length) { string.length + 1 }

        it { is_expected.to be false }
      end

      context "characters length is greater than an argument," do
        let(:expected_length) { string.length - 1 }

        it { is_expected.to be false }
      end
    end

    context "when an argument is Range," do
      context "characters length is in range," do
        let(:expected_length) { (string.length - 1)..(string.length + 1) }

        it { is_expected.to be true }
      end

      context "characters length is equal to the minimum of range," do
        let(:expected_length) { string.length..(string.length + 1) }

        it { is_expected.to be true }
      end

      context "characters length is equal to the maximum of range," do
        let(:expected_length) { (string.length - 1)..string.length }

        it { is_expected.to be true }
      end

      context "characters length is less than the minimum of range," do
        let(:expected_length) { (string.length + 1)..(string.length + 2) }

        it { is_expected.to be false }
      end

      context "characters length is greater than the maximum of range," do
        let(:expected_length) { (string.length - 2)..(string.length - 1) }

        it { is_expected.to be false }
      end
    end
  end


  # ----------------------------------------------------------------------------
  # Check Whether Characters Length Is Less Than A Specific Number
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER CHARACTERS LENGTH IS LESS THAN A SPECIFIC NUMBER ::" do
    subject { string.length_lt?(expected_length) }

    context "when an argument is String," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Range," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when characters length is less than an argument," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be true }
    end

    context "when characters length is equal to an argument," do
      let(:expected_length) { string.length }

      it { is_expected.to be false }
    end

    context "when characters length is greater than an argument," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Whether Characters Length Is Less Than Or Equal To A Specific Number
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER CHARACTERS LENGTH IS LESS THAN OR EQUAL TO A SPECIFIC NUMBER ::" do
    subject { string.length_lte?(expected_length) }

    context "when an argument is String," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Range," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when characters length is equal to an argument," do
      let(:expected_length) { string.length }

      it { is_expected.to be true }
    end

    context "when characters length is less than an argument," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be true }
    end

    context "when characters length is greater than an argument," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Whether Characters Length Is Greater Than A Specific Number
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER CHARACTERS LENGTH IS GREATER THAN A SPECIFIC NUMBER ::" do
    subject { string.length_gt?(expected_length) }

    context "when an argument is String," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Range," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when characters length is greater than an argument," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be true }
    end

    context "when characters length is equal to an argument," do
      let(:expected_length) { string.length }

      it { is_expected.to be false }
    end

    context "when characters length is less than an argument," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Whether Characters Length Is Greater Than Or Equal To A Specific Number
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER CHARACTERS LENGTH IS GREATER THAN OR EQUAL TO A SPECIFIC NUMBER ::" do
    subject { string.length_gte?(expected_length) }

    context "when an argument is String," do
      let(:expected_length) { string.length.to_s }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an argument is Range," do
      let(:expected_length) { (string.length - 1)..(string.length + 1) }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when characters length is equal to an argument," do
      let(:expected_length) { string.length }

      it { is_expected.to be true }
    end

    context "when characters length is greater than an argument," do
      let(:expected_length) { string.length - 1 }

      it { is_expected.to be true }
    end

    context "when characters length is less than an argument," do
      let(:expected_length) { string.length + 1 }

      it { is_expected.to be false }
    end
  end

end
