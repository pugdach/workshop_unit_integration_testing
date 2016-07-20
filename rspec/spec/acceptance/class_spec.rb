require 'spec_helper_acceptance'

describe 'my_apache class' do
  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      class { 'my_apache': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end

    #describe package('my_apache') do
    #  it { is_expected.to be_installed }
    #end

    #describe service('my_apache') do
    #  it { is_expected.to be_enabled }
    #  it { is_expected.to be_running }
    #  it { is_expected.to listen('80') }
    #end
  end
end
