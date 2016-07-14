# PUG Berlin - Workshop Puppet unit and integration testing and deployment

Date: July, 20, 2016

## rspec

### Requirements

An actual ruby installation - either in a VM or locally with RVM/rbenv

Vagrant and Virtualbox or VMware installed.

I hope we have internet access... or preinstall:

- rspec-puppet
- puppet-lint
- beaker

```
gem install rspec-puppet puppet-lint beaker
```

### Overview

This repository contains a module with several errors.
We want to identify different ways to get notified about the errors.

Some errors are obious, others are not

### Step 1 - Unit Testing

For unit testing we will make use of rspec-puppet

- make module working (minimal changes, only let rspec-puppet pass)
- resource coverage
- define testing
- fact testing
- function testing

### Step 2 - Integration testing

For integration testing we will use beaker as wrapper around vagrant and virtualbox/VMware.

Identify MultiOS testing solutions

Fix code so that beaker tests will pass

Add more beaker tests

## r10 deployment

### Overview

Have a Puppet Matser at hand
Install r10k using the puppet agent ruby gem installer

### Step 1

create r10k git repository

create a new branch
remove master branch

add Puppetfile to new branch with our tested module
add a tag to the tested module

either

create more repos with puppet modules

or

add forge modules to Puppetfile

### Step 2 deployment

run r10k deploy environment -pv

create new branch
add module to puppetfile

rerun r10k deploy

