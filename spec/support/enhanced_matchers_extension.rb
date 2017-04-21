# ==============================================================================
# SPEC - SUPPORT - ENHANCED MATCHERS EXTENSION
# ==============================================================================
module EnhancedMatchersExtension

  # Call a proc object and be expected.
  def is_expected_as_block
    expect { subject }
  end

end
