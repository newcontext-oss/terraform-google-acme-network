# frozen_string_literal: true

control "network" do
  describe command('gcloud compute networks describe test-org') do
    its('stdout') { should match (/kind: compute#network/) }
    its('stdout') { should match (/routingMode: REGIONAL/) }
  end
end

control "subnetworks" do
  describe command('gcloud compute networks describe test-org') do
    its('stdout') { should match (/autoCreateSubnetworks: false/) }
    its('stdout') { should match (/regions\/us-west1\/subnetworks\/db/) }
    its('stdout') { should match (/regions\/us-west1\/subnetworks\/job/) }
    its('stdout') { should match (/regions\/us-west1\/subnetworks\/public/) }
    its('stdout') { should match (/regions\/us-west1\/subnetworks\/app/) }
  end
end
