require 'spec_helper'

describe Travis::Client::User do
  # attributes :login, :name, :email, :gravatar_id, :locale, :is_syncing, :synced_at, :correct_scopes
  subject { Travis::Client.new(:access_token => 'token').user }

  describe '#login' do
    subject { super().login }
    it { should be == 'rkh' }
  end

  describe '#name' do
    subject { super().name }
    it { should be == 'Konstantin Haase' }
  end

  describe '#email' do
    subject { super().email }
    it { should be == 'konstantin.haase@gmail.com' }
  end

  describe '#gravatar_id' do
    subject { super().gravatar_id }
    it { should be == '5c2b452f6eea4a6d84c105ebd971d2a4' }
  end

  describe '#locale' do
    subject { super().locale }
    it { should be == 'en' }
  end

  describe '#is_syncing' do
    subject { super().is_syncing }
    it { should be_falsey }
  end

  describe '#synced_at' do
    subject { super().synced_at }
    it { should be_a(Time) }
  end

  it { is_expected.not_to be_syncing }
  it { is_expected.to be_correct_scopes }
end
