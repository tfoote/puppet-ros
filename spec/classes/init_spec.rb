require 'spec_helper'
describe 'ros' do

  context 'with defaults for all parameters' do
    it { should contain_class('ros') }
  end
end
