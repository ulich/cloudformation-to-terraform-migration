# AWS cloudformation to terraform migration

This repository shows how to migrate resources managed by AWS cloudformation
to terraform without actually destroying the resources and creating them again.
To accomplish this, AWS cloudformation's `DeletionPolicy: Retain` and `terraform import`
is leveraged.

## 1.

First we create a cloudformation stack whose resources we want to migrate to terraform:

```
git checkout step-1
```

Now let's create the inital stack

```
aws cloudformation create-stack --stack-name migrationtest --template-body file://cloudformation-template.json
```
