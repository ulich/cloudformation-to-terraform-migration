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


## 2.

Next we add `"DeletionPolicy" : "Retain",` to the resources we want to migrate:

```
git checkout step-2
```

Here we added it to all resources, because we will migrate all of the resources in one step,
but it could also be done resource by resource.

```
aws cloudformation update-stack --stack-name migrationtest --template-body file://cloudformation-template.json
```
