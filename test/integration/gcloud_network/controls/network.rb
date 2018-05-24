# frozen_string_literal: true

network_name = attribute("network_name", {})

control "network" do
  describe "description" do
    subject do
      command "gcloud compute networks describe #{network_name}"
    end

    specify "should indicate a kind of compute network" do
      expect(subject.stdout).to match /kind: compute#network/
    end
    
    specify "should indicate a regional routing mode" do
      expect(subject.stdout).to match /routingMode: REGIONAL/
    end

    specify "should indicate automatic creation of subnetworks is disabled" do
      expect(subject.stdout).to match /autoCreateSubnetworks: false/
    end
    
    specify "should indicate a database subnetwork exists" do
      expect(subject.stdout).to match /regions\/us-west1\/subnetworks\/#{network_name}-db/
    end

    specify "should indicate a job subnetwork exists" do
       expect(subject.stdout).to match /regions\/us-west1\/subnetworks\/#{network_name}-job/
    end

    specify "should indicate a public subnetwork exists" do
      expect(subject.stdout).to match /regions\/us-west1\/subnetworks\/#{network_name}-public/
    end

    specify "should indicate an application subnetwork exists" do
      expect(subject.stdout).to match /regions\/us-west1\/subnetworks\/#{network_name}-app/
    end
  end
end
