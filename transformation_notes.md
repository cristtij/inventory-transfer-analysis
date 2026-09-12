# Data Transformation Process

## Source Data

The original analysis used an internal inventory-transfer export.

For confidentiality, this portfolio version uses fully synthetic daa designed to replicate the structure and analytical challenges of the original project.

## Issue 1: Multiple Rows per Transfer

Each transfer ticket could contain multiple product lines. Therefore, the raw row count did not represent the actual number of transfers. 

Example:

Transaction 45821 - Product A
Transaction 45821 - Product B
Transaction 45821 - Product C

Although the data set contains three rows, these recordso only represent one transfer.

## Solution: Unique Transfer Key

A composite identifier was created using:

Branch + Transaction Number

Example:

Jacksonville 101 + 45122 = Jacksonville 101-45122

This allowed distinct transfer tickets to be counted accurately. 

## Issue 2: Date Analysis

The raw transaction date was convedrted into a month field to support monthly trend analysis in Power BI. 
