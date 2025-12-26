#!/bin/bash
# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "=========================="
echo ""

# Read principal amount
echo -n "Enter the principal amount: "
read principal

# Read rate of interest
echo -n "Enter the rate of interest (in %): "
read rate

# Read time period
echo -n "Enter the time period (in years): "
read time

# Validate inputs are numeric
if ! [[ "$principal" =~ ^[0-9]+\.?[0-9]*$ ]] || ! [[ "$rate" =~ ^[0-9]+\.?[0-9]*$ ]] || ! [[ "$time" =~ ^[0-9]+\.?[0-9]*$ ]]; then
    echo "Error: All inputs must be valid positive numbers."
    exit 1
fi

# Calculate simple interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the result
echo ""
echo "=========================="
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "=========================="
