# ==============================================================================
# SPEC - STRING FOUNDATION - CONVERTIBLE SPEC
# frozen_string_literal: true
# ==============================================================================
describe "[ Convertible Methods ]" do

  # ----------------------------------------------------------------------------
  # Check Convertible To Integer
  # ----------------------------------------------------------------------------
  describe "CHECK CONVERTIBLE TO INTEGER" do
    let(:string) { nil }
    subject { string.to_i? }

    context "when a string is an integral number," do
      context "it is a positive number," do
        let(:string) { "123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-5" }

        it { is_expected.to be true }
      end
    end

    context "when a string is a floating point number," do
      context "it is a positive number," do
        let(:string) { "0.123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+0.123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-5.123" }

        it { is_expected.to be true }
      end
    end

    context "when a string is a floating point number without an integer," do
      context "it is a positive number," do
        let(:string) { ".123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+.123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-.123" }

        it { is_expected.to be true }
      end
    end

    context "when a string a number has leading zeros," do
      context "it is a positive number," do
        let(:string) { "00000123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+00000123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-00000123" }

        it { is_expected.to be true }
      end
    end

    context "when a string is not a number," do
      let(:string) { "abc" }

      it { is_expected.to be false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Convertible To Float
  # ----------------------------------------------------------------------------
  describe "CHECK CONVERTIBLE TO FLOAT" do
    let(:string) { nil }
    subject { string.to_f? }

    context "when a string is an integral number," do
      context "it is a positive number," do
        let(:string) { "123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-5" }

        it { is_expected.to be true }
      end
    end

    context "when a string is a floating point number," do
      context "it is a positive number," do
        let(:string) { "0.123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+0.123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-5.123" }

        it { is_expected.to be true }
      end
    end

    context "when a string is a floating point number without an integer," do
      context "it is a positive number," do
        let(:string) { ".123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+.123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-.123" }

        it { is_expected.to be true }
      end
    end

    context "when a string a number has leading zeros," do
      context "it is a positive number," do
        let(:string) { "00000123" }

        it { is_expected.to be true }
      end

      context "it is a positive number with a sign," do
        let(:string) { "+00000123" }

        it { is_expected.to be true }
      end

      context "it is a negative number," do
        let(:string) { "-00000123" }

        it { is_expected.to be true }
      end
    end

    context "when a string is not a number," do
      let(:string) { "abc" }

      it { is_expected.to be false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Convertible To Boolean
  # ----------------------------------------------------------------------------
  describe "CHECK CONVERTIBLE TO BOOLEAN" do
    let(:string) { nil }
    subject { string.to_bool? }

    context "when a string is \"true\"," do
      let(:string) { "true" }

      it { is_expected.to be true }
    end

    context "when a string is \"false\"," do
      let(:string) { "false" }

      it { is_expected.to be true }
    end

    context "when a string is empty," do
      let(:string) { "" }

      it { is_expected.to be false }
    end

    context "when a string is a positive number," do
      let(:string) { "1" }

      it { is_expected.to be false }
    end

    context "when a string is a negative number," do
      let(:string) { "-1" }

      it { is_expected.to be false }
    end

    context "when a string is not a number," do
      let(:string) { "abc" }

      it { is_expected.to be false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check Convertaile To Booly
  # ----------------------------------------------------------------------------
  describe "CHECK CONVERTIBLE TO BOOLYs" do
    let(:string) { nil }
    subject { string.to_booly? }

    context "when a string is \"true\"," do
      let(:string) { "true" }

      it { is_expected.to be true }
    end

    context "when a string is \"false\"," do
      let(:string) { "false" }

      it { is_expected.to be true }
    end

    context "when a string is empty," do
      let(:string) { "" }

      it { is_expected.to be true }
    end

    context "when a string is a positive number," do
      let(:string) { "1" }

      it { is_expected.to be true }
    end

    context "when a string is a negative number," do
      let(:string) { "-1" }

      it { is_expected.to be true }
    end

    context "when a string is not a number," do
      let(:string) { "abc" }

      it { is_expected.to be false }
    end
  end

end
