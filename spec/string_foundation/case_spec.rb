# ==============================================================================
# SPEC - STRING FOUNDATION - CASE
# ==============================================================================
# frozen_string_literal: true
describe '[ Case Methods ]' do
  # Define shared contexts.
  # ----------------------------------------------------------------------------
  shared_context 'one word'         do let(:string) { 'string' }           end
  shared_context 'lowerCamelCase'   do let(:string) { 'weAreBrushdown' }   end
  shared_context 'UpperCamelCase'   do let(:string) { 'WeAreBrushdown' }   end
  shared_context 'lower_snake_case' do let(:string) { 'we_are_brushdown' } end
  shared_context 'Upper_Snake_Case' do let(:string) { 'We_Are_Brushdown' } end
  shared_context 'lower-kebab-case' do let(:string) { 'we-are-brushdown' } end
  shared_context 'Upper-Kebab-Case' do let(:string) { 'We-Are-Brushdown' } end
  shared_context 'lower space case' do let(:string) { 'we are brushdown' } end
  shared_context 'Upper Space Case' do let(:string) { 'We Are Brushdown' } end
  shared_context 'lower.dot.case'   do let(:string) { 'we.are.brushdown' } end
  shared_context 'Upper.Dot.Case'   do let(:string) { 'We.Are.Brushdown' } end
  # ----------------------------------------------------------------------------

  # ----------------------------------------------------------------------------
  # Convert to lowerCamelCase
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO lowerCamelCase' do
    subject { string.to_lcamel }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to lowerCamelCase' do
      it { is_expected.to eq('weAreBrushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('string') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to lowerCamelCase'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to lowerCamelCase'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to lowerCamelCase'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to lowerCamelCase'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to lowerCamelCase'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to lowerCamelCase'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to lowerCamelCase'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to lowerCamelCase'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to lowerCamelCase'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to lowerCamelCase'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to UpperCamelCase
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO UpperCamelCase' do
    subject { string.to_ucamel }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to UpperCamelCase' do
      it { is_expected.to eq('WeAreBrushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('String') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to UpperCamelCase'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to UpperCamelCase'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to UpperCamelCase'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to UpperCamelCase'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to UpperCamelCase'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to UpperCamelCase'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to UpperCamelCase'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to UpperCamelCase'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to UpperCamelCase'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to UpperCamelCase'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to lower_snake_case
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO lower_snake_case' do
    subject { string.to_lsnake }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to lower_snake_case' do
      it { is_expected.to eq('we_are_brushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('string') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to lower_snake_case'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to lower_snake_case'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to lower_snake_case'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to lower_snake_case'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to lower_snake_case'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to lower_snake_case'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to lower_snake_case'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to lower_snake_case'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to lower_snake_case'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to lower_snake_case'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to Upper_Snake_Case
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO Upper_Snake_Case' do
    subject { string.to_usnake }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to Upper_Snake_Case' do
      it { is_expected.to eq('We_Are_Brushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('String') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to Upper_Snake_Case'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to lower-kebab-case
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO lower-kebab-case' do
    subject { string.to_lkebab }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to lower-kebab-case' do
      it { is_expected.to eq('we-are-brushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('string') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to lower-kebab-case'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to lower-kebab-case'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to lower-kebab-case'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to lower-kebab-case'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to lower-kebab-case'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to lower-kebab-case'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to lower-kebab-case'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to lower-kebab-case'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to lower-kebab-case'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to lower-kebab-case'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to Upper-Kebab-Case
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO Upper-Kebab-Case' do
    subject { string.to_ukebab }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to Upper-Kebab-Case' do
      it { is_expected.to eq('We-Are-Brushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('String') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to Upper-Kebab-Case'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to lower space case
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO lower space case' do
    subject { string.to_lspace }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to lower space case' do
      it { is_expected.to eq('we are brushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('string') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to lower space case'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to lower space case'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to lower space case'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to lower space case'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to lower space case'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to lower space case'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to lower space case'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to lower space case'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to lower space case'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to lower space case'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to Upper Space Case
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO Upper Space Case' do
    subject { string.to_uspace }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to Upper Space Case' do
      it { is_expected.to eq('We Are Brushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('String') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to Upper Space Case'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to Upper Space Case'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to Upper Space Case'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to Upper Space Case'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to Upper Space Case'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to Upper Space Case'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to Upper Space Case'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to Upper Space Case'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to Upper Space Case'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to Upper Space Case'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to lower.dot.case
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO lower.dot.case' do
    subject { string.to_ldot }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to lower.dot.case' do
      it { is_expected.to eq('we.are.brushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('string') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to lower.dot.case'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to lower.dot.case'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to lower.dot.case'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to lower.dot.case'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to lower.dot.case'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to lower.dot.case'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to lower.dot.case'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to lower.dot.case'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to lower.dot.case'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to lower.dot.case'
    end
  end


  # ----------------------------------------------------------------------------
  # Convert to Upper.Dot.Case
  # ----------------------------------------------------------------------------
  describe 'CONVERT TO Upper.Dot.Case' do
    subject { string.to_udot }

    # Define shared examples.
    # --------------------------------------------------------------------------
    shared_examples 'be converted to Upper.Dot.Case' do
      it { is_expected.to eq('We.Are.Brushdown') }
    end
    # --------------------------------------------------------------------------

    context 'When a string has one word,' do
      include_context 'one word'

      it { is_expected.to eq('String') }
    end

    context 'When a string lowerCamelCase,' do
      include_context 'lowerCamelCase'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end

    context 'When a string UpperCamelCase,' do
      include_context 'UpperCamelCase'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end

    context 'When a string lower_snake_case,' do
      include_context 'lower_snake_case'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end

    context 'When a string Upper_Snake_Case,' do
      include_context 'Upper_Snake_Case'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end

    context 'When a string lower-kebab-case,' do
      include_context 'lower-kebab-case'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end

    context 'When a string Upper-Kebab-Case,' do
      include_context 'Upper-Kebab-Case'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end

    context 'When a string lower space case,' do
      include_context 'lower space case'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end

    context 'When a string Upper Space Case,' do
      include_context 'Upper Space Case'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end
    context 'When a string lower.dot.case,' do
      include_context 'lower.dot.case'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end

    context 'When a string Upper.Dot.Case,' do
      include_context 'Upper.Dot.Case'

      it_behaves_like 'be converted to Upper.Dot.Case'
    end
  end


  # ----------------------------------------------------------------------------
  # Split string according to camel case
  # ----------------------------------------------------------------------------
  describe 'SPLIT ACCORDING TO CAMEL CASE' do
    let(:string) { nil }
    subject { string.split_camel }

    context 'When string is Upper Camel Case,' do
      let!(:string) { 'ThisIsWord' }
      it { is_expected.to eq(['This', 'Is', 'Word']) }
    end

    context 'When string is Lower Camel Case,' do
      let!(:string) { 'thisIsWord' }
      it { is_expected.to eq(['this', 'Is', 'Word']) }
    end

    context 'When string is not Camel Case,' do
      let!(:string) { 'thisisword' }
      it { is_expected.to eq(['thisisword']) }
    end
  end


  # ----------------------------------------------------------------------------
  # Check is_upper?
  # ----------------------------------------------------------------------------
  describe 'CHECK is_upper?' do
    let(:character) { nil }
    subject { character.is_upper? }

    context 'when a character is upper case,' do
      let(:character) { 'C' }
      it { is_expected.to be true }
    end

    context 'when a character is lower case,' do
      let(:character) { 'c' }
      it { is_expected.to be false }
    end
  end


  # ----------------------------------------------------------------------------
  # Check is_lower?
  # ----------------------------------------------------------------------------
  describe 'CHECK is_lower?' do
    let(:character) { nil }
    subject { character.is_lower? }

    context 'when a character is lower case,' do
      let(:character) { 'c' }
      it { is_expected.to be true }
    end

    context 'when a character is uppser case,' do
      let(:character) { 'C' }
      it { is_expected.to be false }
    end
  end


  # ----------------------------------------------------------------------------
  # Make first character lower case
  # ----------------------------------------------------------------------------
  describe 'MAKE FIRST CHARACTER LOWER CASE' do
    let(:string) { nil }
    subject { string.make_head_lower }

    context 'When first character is Upper Case,' do
      let(:string) { 'ThisIsString' }
      it { is_expected.to eq('thisIsString') }
    end

    context 'When first character is Lower Case,' do
      let(:string) { 'thisIsString' }
      it { is_expected.to eq('thisIsString') }
    end
  end

end
