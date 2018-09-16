# Helm Charts

## Introduction

Here are all of my helm charts

## Contents

- [Usage](#usage)
- [Generate](#generate)

## Usage

```bash
# Add repo
helm repo add rms1000watt https://rms1000watt.github.io/helm-charts

# Install it
helm install rms1000watt/monochart -f monochart/values.example.yaml

# Look around

# Delete
helm ls -q | xargs helm delete
```

## Generate

```bash
./generator.sh
```