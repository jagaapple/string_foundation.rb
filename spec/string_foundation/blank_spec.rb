# ==============================================================================
# SPEC - STRING FOUNDATION - BLANK
# frozen_string_literal: true
# ==============================================================================
describe "[ Blank Methods ]" do
  let(:string) { "" }

  # ----------------------------------------------------------------------------
  # Check Whether A String Is A Blank
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER A STRING IS A BLANK ::" do
    subject { string.blank? }

    context "when a string is an empty," do
      it { is_expected.to be true }
    end

    context "when a string is a word," do
      let(:string) { "string" }

      it { is_expected.to be false }
    end

    context "when a string includes half-width spaces," do
      let(:string) { "this is string foundation." }

      it { is_expected.to be false }
    end

    context "when a string includes only 1 half-width space," do
      let(:string) { " " }

      it { is_expected.to be true }
    end

    context "when a string includes only multiple half-width spaces," do
      let(:string) { " " * 3 }

      it { is_expected.to be true }
    end

    context "when a string is a newline," do
      let(:string) { "\n" }

      it { is_expected.to be true }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Whether A String Is Present
  # ----------------------------------------------------------------------------
  describe "CHECK WHETHER A STRING IS PRESENT ::" do
    subject { string.present? }

    context "when a string is an empty," do
      it { is_expected.to be false }
    end

    context "when a string is a word," do
      let(:string) { "string" }

      it { is_expected.to be true }
    end

    context "when a string includes half-width spaces," do
      let(:string) { "this is string foundation." }

      it { is_expected.to be true }
    end

    context "when a string includes only 1 half-width space," do
      let(:string) { " " }

      it { is_expected.to be false }
    end

    context "when a string includes only multiple half-width spaces," do
      let(:string) { " " * 3 }

      it { is_expected.to be false }
    end

    context "when a string is a newline," do
      let(:string) { "\n" }

      it { is_expected.to be false }
    end
  end

end
