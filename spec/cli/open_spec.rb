require 'spec_helper'

describe Travis::CLI::Open do
  example 'travis open -p' do
    expect(run_cli('open', '-p')).to be_success
    expect(stdout).to match(/https:\/\/travis-ci.org\/[\w\W]*\/travis\.rb/)
  end

  example 'travis open 6180 -p' do
    expect(run_cli('open', '6180', '-p')).to be_success
    expect(stdout).to match(/https:\/\/travis-ci.org\/[\w\W]*\/travis\.rb\/builds\/4125095/)
  end

  example 'travis open 6180.1 -p' do
    expect(run_cli('open', '6180.1', '-p')).to be_success
    expect(stdout).to match(/https:\/\/travis-ci.org\/[\w\W]*\/travis\.rb\/jobs\/4125096/)
  end

  example 'travis open -pg' do
    expect(run_cli('open', '-pg')).to be_success
    expect(stdout).to match(/https:\/\/github.com\/[\w\W]*\/travis\.rb/)
  end

  example 'travis open 6180 -pg' do
    expect(run_cli('open', '6180', '-pg')).to be_success
    expect(stdout).to eq("https://github.com/rails/rails/compare/6581d798e830...a0265b98f16c\n")
  end

  example 'travis open 6180.1 -pg' do
    expect(run_cli('open', '6180.1', '-pg')).to be_success
    expect(stdout).to eq("https://github.com/rails/rails/compare/6581d798e830...a0265b98f16c\n")
  end
end
