# tf-google-storage-bucket

Prepare a terraform module to create a google storage bucket
Requirement to enable versioning 
Requirement to enable lifecycle rules for any data older than 90 days to be archived
Requirement to use customer managed encryption keys
All of the requirements should be driven through inputs.
Inspec tests should be written to test the module and run through kitchen
