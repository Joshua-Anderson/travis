require 'spec_helper'

describe Travis::Client::Build do
  let(:session) { Travis::Client.new }
  subject { session.build(4125095).commit }

  describe '#sha' do
    subject { super().sha }
    it { should be == 'a0265b98f16c6e33be32aa3f57231d1189302400' }
  end

  describe '#short_sha' do
    subject { super().short_sha }
    it { should be == 'a0265b9' }
  end

  describe '#branch' do
    subject { super().branch }
    it { should be == 'master' }
  end

  describe '#message' do
    subject { super().message }
    it { should be == 'Associaton -> Association' }
  end

  describe '#committed_at' do
    subject { super().committed_at }
    it { should be_a(Time) }
  end

  describe '#author_name' do
    subject { super().author_name }
    it { should be == 'Steve Klabnik' }
  end

  describe '#author_email' do
    subject { super().author_email }
    it { should be == 'steve@steveklabnik.com' }
  end

  describe '#committer_name' do
    subject { super().committer_name }
    it { should be == 'Steve Klabnik' }
  end

  describe '#committer_email' do
    subject { super().committer_email }
    it { should be == 'steve@steveklabnik.com' }
  end

  describe '#compare_url' do
    subject { super().compare_url }
    it { should be == 'https://github.com/rails/rails/compare/6581d798e830...a0265b98f16c' }
  end

  describe '#subject' do
    subject { super().subject }
    it { should be == 'Associaton -> Association' }
  end

  specify "with missing data" do
    expect(session.load("commit" => { "id" => 12 })['commit'].subject).to be_empty
  end
end
