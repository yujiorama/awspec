RSpec::Matchers.define :belong_to_dimension do |name|
  match do |type|
    dimension = type.dimensions
                    .find { |d| d.name == name }
    return false unless dimension
    return dimension.value == @value if @value
    true
  end

  chain :value do |value|
    @value = value
  end
end
