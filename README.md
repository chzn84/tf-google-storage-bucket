# tf-google-storage-bucket

```
Prepare a terraform module to create a google storage bucket
Requirement to enable versioning 
Requirement to enable lifecycle rules for any data older than 90 days to be archived
Requirement to use customer managed encryption keys
All of the requirements should be driven through inputs.
Inspec tests should be written to test the module and run through kitchen

## Getting Started

### Prerequisites
- Install Google Cloud Shell
- Create gcp credentials json and set GOOGLE_APPLICATION_CREDENTIALS environment variable
- Install Inspec
- Install Kitchen
- Create terraform.tfvars under project directory and set values related to your GCP account
   example file:

    project_id = "my-gcp-project"
    bucket_name = "my-gcp-bucket"
    location = "europe-west2"
    default_kms_keyring_name = "my-gcp-keyring"
    default_kms_key_name = "my-gcp-key"


- Create attributes.yml under test/verify and set values according to terraform.tfvars created in previous step
   example file:

    gcp_project_id: 'my-gcp-project'
    gcp_storage_bucket: 'my-gcp-bucket'
    gcp_key_ring_name: 'my-gcp-keyring'
    gcp_key_name: 'my-gcp-key'

## Running terraform and test using Kitchen
- Run 'kitchen test' from project directory
```