# ==============================================================================
# SPEC - STRING FOUNDATION - IS
# frozen_string_literal: true
# ==============================================================================
describe "[ Is Methods ]" do
  let(:string) { "string" }
  let(:expected_symbol) { :string }

  # ----------------------------------------------------------------------------
  # Check Whether Character Is A Specific Symbol
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER CHARACTER IS A SPECIFIC SYMBOL ::" do
    subject { string.is_sym?(expected_symbol) }

    context "when an argument is not a Symbol," do
      let(:expected_symbol) { "string" }

      it { is_expected_as_block.to raise_error(ArgumentError) }
    end

    context "when an object equal to an argument," do
      context "object and argument are alphabets," do
        it { is_expected.to be true }
      end

      context "object and argument are numbers," do
        let(:string) { "123" }
        let(:expected_symbol) { :"123" }

        it { is_expected.to be true }
      end

      context "object and argument are empty," do
        let(:string) { "" }
        let(:expected_symbol) { :"" }

        it { is_expected.to be true }
      end

      context "object and argument include underscores," do
        let(:string) { "string_foundation" }
        let(:expected_symbol) { :string_foundation }

        it { is_expected.to be true }
      end

      context "object and argument include dashes," do
        let(:string) { "string-foundation" }
        let(:expected_symbol) { :"string-foundation" }

        it { is_expected.to be true }
      end
    end

    context "when an object is not equal to an argument," do
      let(:expected_symbol) { :integer }

      it { is_expected.to be false }
    end
  end

end
