require 'spec_helper'

describe Travis::Client::Account do
  context "from all accounts" do
    let(:session) { Travis::Client.new }
    subject { session.accounts.first }

    describe '#name' do
      subject { super().name }
      it { should be == 'Konstantin Haase' }
    end

    describe '#login' do
      subject { super().login }
      it { should be == 'rkh' }
    end

    describe '#type' do
      subject { super().type }
      it { should be == 'user' }
    end

    describe '#repos_count' do
      subject { super().repos_count }
      it { should be == 200 }
    end

    describe '#inspect' do
      subject { super().inspect }
      it { should be == "#<Travis::Client::Account: rkh>" }
    end
  end

  context "known account" do
    let(:session) { Travis::Client.new }
    subject { session.account('rkh') }

    describe '#name' do
      subject { super().name }
      it { should be == 'Konstantin Haase' }
    end

    describe '#login' do
      subject { super().login }
      it { should be == 'rkh' }
    end

    describe '#type' do
      subject { super().type }
      it { should be == 'user' }
    end

    describe '#repos_count' do
      subject { super().repos_count }
      it { should be == 200 }
    end

    describe '#inspect' do
      subject { super().inspect }
      it { should be == "#<Travis::Client::Account: rkh>" }
    end
  end

  context "known account" do
    let(:session) { Travis::Client.new }
    subject { session.account('foo') }

    describe '#name' do
      subject { super().name }
      it { should be_nil }
    end

    describe '#login' do
      subject { super().login }
      it { should be == 'foo' }
    end

    describe '#type' do
      subject { super().type }
      it { should be_nil }
    end

    describe '#inspect' do
      subject { super().inspect }
      it { should be == "#<Travis::Client::Account: foo>" }
    end
  end
end
