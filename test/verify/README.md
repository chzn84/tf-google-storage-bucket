## Run the tests

```
$ cd test/verify/
$ inspec exec . -t gcp:// --attrs attributes.yml

[2019-08-23T00:39:46+01:00] WARN: DEPRECATION: InSpec Attributes are being renamed to InSpec Inputs to avoid confusion with Chef Attributes. Use --input-file on the command line instead of --attrs.
[2019-08-23T00:39:46+01:00] WARN: Input 'gcp_project_id' does not have a value. Use --input-file to provide a value for 'gcp_project_id' or specify a  value with `attribute('gcp_project_id', value: 'somevalue', ...)`.
[2019-08-23T00:39:46+01:00] WARN: Input 'google_storage_bucket' does not have a value. Use --input-file to provide a value for 'google_storage_bucket' or specify a  value with `attribute('google_storage_bucket', value: 'somevalue', ...)`.
[2019-08-23T00:39:46+01:00] WARN: Input 'key_ring_name' does not have a value. Use --input-file to provide a value for 'key_ring_name' or specify a  value with `attribute('key_ring_name', value: 'somevalue', ...)`.
[2019-08-23T00:39:46+01:00] WARN: Input 'key_name' does not have a value. Use --input-file to provide a value for 'key_name' or specify a  value with `attribute('key_name', value: 'somevalue', ...)`.

Profile: GCP InSpec Profile (verify)
Version: 0.1.0
Target:  gcp://chzn84-service-account@chzn84-gcp-project.iam.gserviceaccount.com

  [PASS]  gcp-storage-bucket-1.0: Check that the storage bucket was created
     [PASS]  Bucket chzn84-gcp-bucket-2 should exist
     [PASS]  Bucket chzn84-gcp-bucket-2 storage_class should eq "STANDARD"
     [PASS]  Bucket chzn84-gcp-bucket-2 location should eq "EUROPE-WEST2"
  [PASS]  gcp-key-ring-1.0: Check that the key_ring was created
     [PASS]  Key Ring chzn84-gcp-keyring-2 should exist
  [PASS]  gcp-key-1.0: Check that the key was created
     [PASS]  Crytpo Key chzn84-gcp-key-2 should exist


Profile: Google Cloud Platform Resource Pack (inspec-gcp)
Version: 0.11.0
Target:  gcp://chzn84-service-account@chzn84-gcp-project.iam.gserviceaccount.com

     No tests executed.

Profile Summary: 3 successful controls, 0 control failures, 0 controls skipped
Test Summary: 5 successful, 0 failures, 0 skipped
```