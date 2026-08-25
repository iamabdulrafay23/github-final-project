#!/bin/bash
# Script to calculate Simple Interest

echo "----------------------------------------"
echo "        Simple Interest Calculator      "
echo "----------------------------------------"

# Read Principal Amount
read -p "Enter Principal Amount: " principal

# Read Rate of Interest
read -p "Enter Annual Rate of Interest (%): " rate

# Read Time Period
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest using 'bc' for floating-point calculation
# Formula: (Principal * Rate * Time) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "----------------------------------------"
echo "Simple Interest: $interest"
echo "Total Amount Payable: $total"
echo "----------------------------------------"
