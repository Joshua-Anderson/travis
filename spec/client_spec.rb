require 'spec_helper'

describe Travis::Client do
  describe '#new' do
    subject { super().new }
    it { should be_a(Travis::Client::Session) }
  end
end
