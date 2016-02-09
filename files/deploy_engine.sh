#!/bin/bash

set -e

cd /CustomEngine

# Build the engine
pio build --verbose

# Train the engine
pio train

# Deploy the engine
pio deploy