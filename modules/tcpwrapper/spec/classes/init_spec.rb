require 'spec_helper'
describe 'tcpwrapper' do
  context 'with default values for all parameters' do
    it { should contain_class('tcpwrapper') }
  end
end
