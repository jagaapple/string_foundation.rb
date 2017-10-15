# ==============================================================================
# SPEC - STRING FOUNDATION - VERSION
# ==============================================================================
# frozen_string_literal: true
describe StringFoundation::VERSION do

  # ----------------------------------------------------------------------------
  # Version Definition
  # ----------------------------------------------------------------------------
  it "should have a version number" do
    expect(StringFoundation::VERSION).not_to be_nil
  end

end
