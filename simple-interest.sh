#!/bin/bash

# Simple Interest Calculator

echo "Welcome to Simple Interest Calculator"

# Get user inputs
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest: " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $amount"
