# encoding: UTF-8

require_relative 'spec_helper'

describe 'openstack-telemetry::agent-central' do
  describe 'ubuntu' do
    let(:runner) { ChefSpec::Runner.new(UBUNTU_OPTS) }
    let(:node) { runner.node }
    let(:chef_run) { runner.converge(described_recipe) }

    include_context 'telemetry-stubs'
    include_examples 'expect-runs-common-recipe'

    it 'installs the agent-central package' do
      expect(chef_run).to install_package 'ceilometer-agent-central'
    end

    it 'starts and enables the agent-central service' do
      expect(chef_run).to enable_service('ceilometer-agent-central')
      expect(chef_run).to start_service('ceilometer-agent-central')
    end

    describe 'ceilometer-agent-central' do
      it 'subscribes to its config file' do
        expect(chef_run.service('ceilometer-agent-central')).to subscribe_to('template[/etc/ceilometer/ceilometer.conf]').delayed
      end
    end
  end
end
