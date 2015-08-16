require 'spec_helper'
describe 'zpush' do

  context 'with defaults for all parameters' do
    it { should contain_class('zpush') }
  end
end
