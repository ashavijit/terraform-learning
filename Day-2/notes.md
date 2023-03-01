## AWS

### IAM

- IAM is a global service
- Root account is the account created when first setup AWS account
- New users have no permissions when first created
- New users are assigned Access Key ID and Secret Access Key when first created
- Access Key ID and Secret Access Key can be downloaded only once
- Access Key ID and Secret Access Key can be deleted and regenerated
- Access Key ID and Secret Access Key should be stored in a secure location
- Access Key ID and Secret Access Key should never be shared


### CONNECT AWS WITH TERRAFORM

```hcl
provider "aws" {
  region = "us-east-1"
}
```