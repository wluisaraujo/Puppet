require 'spec_helper'
describe 'sysctlconfs' do
  context 'with default values for all parameters' do
    it { should contain_class('sysctlconfs') }
  end
end
