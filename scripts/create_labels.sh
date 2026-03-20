#!/bin/bash
# Create GitHub labels for PrivacyLayer
set -e

echo "Creating GitHub labels..."

if ! command -v gh &> /dev/null; then
    echo "Error: GitHub CLI not installed"
    exit 1
fi

if ! gh auth status &> /dev/null; then
    echo "Error: Not authenticated"
    exit 1
fi

# Create labels
gh label create "bounty" --color "7057FF" --description "Has USDC reward via Drips Wave" --force
gh label create "circuits" --color "0052CC" --description "Noir circuit work" --force
gh label create "contracts" --color "D93F0B" --description "Soroban contract work" --force
gh label create "sdk" --color "FBCA04" --description "TypeScript SDK work" --force
gh label create "frontend" --color "1D76DB" --description "UI/UX work" --force
gh label create "documentation" --color "0E8A16" --description "Docs and guides" --force
gh label create "testing" --color "5319E7" --description "Test coverage" --force
gh label create "security" --color "B60205" --description "Security-related" --force
gh label create "good first issue" --color "7057FF" --description "Beginner-friendly" --force
gh label create "help wanted" --color "008672" --description "Looking for contributors" --force
gh label create "enhancement" --color "A2EEEF" --description "New feature" --force
gh label create "priority: high" --color "B60205" --description "Urgent" --force
gh label create "priority: medium" --color "FBCA04" --description "Important" --force
gh label create "priority: low" --color "0E8A16" --description "Nice to have" --force
gh label create "optimization" --color "D4C5F9" --description "Performance optimization" --force

echo "✅ Labels created successfully!"
