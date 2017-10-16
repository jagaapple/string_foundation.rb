# ==============================================================================
# SPEC - STRING FOUNDATION - LENGTH
# ==============================================================================
# frozen_string_literal: true
describe "[ Length Methods ]" do

  describe "COMPARE CHARACTERS LENGTH" do
    context "when the argument is String class," do
      it { expect{ "string".length?("6") }.to raise_error ArgumentError }
    end

    context "when characters length and argument are the same," do
      it { expect("string".length?(6)).to be true }
    end

    context "when characters length and argument are not the same," do
      it { expect("string".length?(5)).to be false }
    end

    context "when character length are within range of argument," do
      it {
        expect("string".length?(1..10)).to be true
        expect("string".length?(6..10)).to be true
        expect("string".length?(1..6)).to be true
      }
    end

    context "when character length are out of range of argument," do
      it {
        expect("string".length?(1..5)).to be false
        expect("string".length?(7..10)).to be false
      }
    end
  end

end
