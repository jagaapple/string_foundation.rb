# ==============================================================================
# SPEC - STRING FOUNDATION - VERSION
# ==============================================================================
# frozen_string_literal: true
describe "[ With Methods ]" do

  # ----------------------------------------------------------------------------
  # Without Leading Zeros
  # ----------------------------------------------------------------------------
  describe "WITHOUT LEADING ZEROS ::" do
    let(:string_number) { nil }
    subject { string_number.without_leading_zeros }

    context "when a string has leading zeros," do
      context "without a plus or minus sign," do
        let(:string_number) { "0000123" }

        it { is_expected.to eq("123") }
      end

      context "with a minus sign," do
        let(:string_number) { "-0000123" }

        it { is_expected.to eq("-123") }
      end
    end

    context "when a string has some zero characters," do
      context "without a plus or minus sign," do
        let(:string_number) { "00001230000" }

        it { is_expected.to eq("1230000") }
      end


      context "with a minus sign," do
        let(:string_number) { "-00001230000" }

        it { is_expected.to eq("-1230000") }
      end
    end

    context "when a string like a floating point number has leading zeros," do
      context "without a plus or minus sign," do
        let(:string_number) { "000000.3" }

        it { is_expected.to eq("0.3") }
      end

      context "with a minus sign," do
        let(:string_number) { "-000000.3" }

        it { is_expected.to eq("-0.3") }
      end
    end

    context "when a string is \"0\"," do
      context "without a plus or minus sign," do
        let(:string_number) { "0" }

        it { is_expected.to eq("0") }
      end

      context "with a minus sign," do
        let(:string_number) { "-0" }

        it { is_expected.to eq("0") }
      end
    end

    context "when a string has only zero characters," do
      context "without a plus or minus sign," do
        it "should return a string \"0\"" do
          expect("00".without_leading_zeros).to eq("0")
          expect("000".without_leading_zeros).to eq("0")
          expect("0000".without_leading_zeros).to eq("0")
          expect("00000".without_leading_zeros).to eq("0")
        end
      end

      context "with a minus sign," do
        it "should return a string \"0\"" do
          expect("-00".without_leading_zeros).to eq("0")
          expect("-000".without_leading_zeros).to eq("0")
          expect("-0000".without_leading_zeros).to eq("0")
          expect("-00000".without_leading_zeros).to eq("0")
        end
      end
    end

    context "when a string does not start with \"0\" and \"-0\"," do
      it "should return the same string" do
        random_text = RandomToken.gen(10, seed: :alphabet).without_leading_zeros
        expect(random_text).to eq(random_text)
      end
    end
  end

end
