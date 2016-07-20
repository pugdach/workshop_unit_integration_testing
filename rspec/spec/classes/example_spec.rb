require 'spec_helper'

describe 'my_apache' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "my_apache class without any parameters" do
          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('my_apache::params') }
          it { is_expected.to contain_class('my_apache::install').that_comes_before('my_apache::config') }
          it { is_expected.to contain_class('my_apache::config') }
          it { is_expected.to contain_class('my_apache::service').that_subscribes_to('my_apache::config') }

          it { is_expected.to contain_service('my_apache') }
          it { is_expected.to contain_package('my_apache').with_ensure('present') }
          it { is_expected.to contain_file('apache_config').with_ensure('file') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'my_apache class without any parameters on Solaris/Nexenta' do
      let(:facts) do
        {
          :osfamily        => 'Solaris',
          :operatingsystem => 'Nexenta',
        }
      end

      it { expect { is_expected.to contain_package('my_apache') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
