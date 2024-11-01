#!/bin/bash

# Add the helm chart for crossplane
helm repo add crossplane-stable https://charts.crossplane.io/stable

# Update the repo
helm repo update

# Install the chart
helm install crossplane --namespace crossplane-system --create-namespace crossplane-stable/crossplane


