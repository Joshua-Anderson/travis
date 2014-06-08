require 'spec_helper'

describe Travis::Client::Broadcast do
  let(:session) { Travis::Client.new }
  subject { session.broadcasts.first }

  describe '#id' do
    subject { super().id }
    it { should be == 1 }
  end

  describe '#message' do
    subject { super().message }
    it { should be == "Hello!" }
  end

end
