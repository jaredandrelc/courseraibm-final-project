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
