# ==============================================================================
# SPEC - STRING FOUNDATION - BLANK
# ==============================================================================
# frozen_string_literal: true
describe "[ Blank Methods ]" do
  let(:string) { "" }

  # ----------------------------------------------------------------------------
  # Check Whether Characters Is A Blank
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER CHARACTERS IS A BLANK ::" do
    subject { string.blank?() }

    context "when object is empty," do
      it { is_expected.to be true }
    end

    context "when object is word," do
      let(:string) { "string" }

      it { is_expected.to be false }
    end

    context "when object is sentence included half-width spaces," do
      let(:string) { "this is string foundation." }

      it { is_expected.to be false }
    end

    context "when object is single half-width space," do
      let(:string) { " " }

      it { is_expected.to be true }
    end

    context "when object is multiple half-width spaces," do
      let(:string) { " " * 2 }

      it { is_expected.to be true }
    end

    context "when object is newline," do
      let(:string) { "\n" }

      it { is_expected.to be true }
    end
  end

  # ----------------------------------------------------------------------------
  # Check Whether Characters Is Not A Blank
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER CHARACTERS IS NOT A BLANK ::" do
    subject { string.present?() }

    context "when object is empty," do
      it { is_expected.to be false }
    end

    context "when object is word," do
      let(:string) { "string" }

      it { is_expected.to be true }
    end

    context "when object is sentence included half-width spaces," do
      let(:string) { "this is string foundation." }

      it { is_expected.to be true }
    end

    context "when object is single half-width space," do
      let(:string) { " " }

      it { is_expected.to be false }
    end

    context "when object is multiple half-width spaces," do
      let(:string) { " " * 2 }

      it { is_expected.to be false }
    end

    context "when object is newline," do
      let(:string) { "\n" }

      it { is_expected.to be false }
    end
  end

end
