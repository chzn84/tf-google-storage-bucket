# copyright: 2018, The Authors

title "Tests"

gcp_project_id = attribute("gcp_project_id")
key_ring_name = attribute("gcp_key_ring_name")
key_name = attribute("gcp_key_name")
bucket = attribute('gcp_storage_bucket')

control 'gcp-storage-bucket-1.0' do
  impact 1.0
  title 'Check that the storage bucket was created'
  describe google_storage_bucket(name: bucket) do
    it { should exist }
    its('storage_class') { should eq 'STANDARD' }
    its('location') { should eq 'EUROPE-WEST2' }
  end
end

control 'gcp-key-ring-1.0' do
  impact 1.0
  title 'Check that the key_ring was created'
  describe google_kms_key_ring(project: gcp_project_id,  location: 'europe-west2', name: key_ring_name) do
        it { should exist }
  end
end

control 'gcp-key-1.0' do
  impact 1.0
  title 'Check that the key was created'
  describe google_kms_crypto_key(project: gcp_project_id,  location: 'europe-west2', key_ring_name: key_ring_name, name: key_name) do
        it { should exist }
  end
end