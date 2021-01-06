require 'far'
require 'rspec'

describe 'find_and_replace' do
  it 'replaces a whole word' do
    expect("Hello world".find_and_replace("world", "universe")).to eq("Hello universe")
    expect("Hello dwarf".find_and_replace("Hello", "Goodbye")).to eq("Goodbye dwarf")
  end

  it 'does not replace anything if there is nothing to replace' do
    expect("Call me Ishmael.".find_and_replace("Ashot", "Kamala")).to eq("Call me Ishmael.")
  end
end

