# inventory-transfer-analysis

## Overview

This project recreates and expands upon an inventory transfer analysis I conducted during a branch management internship.

To protect confidential company information, all data in this repository is synthetic. All data points including transaction values, costs, financial assumption, and company identifiers are all fictional. 

## Business Problem

Inventory transfers allow branches to fulfill customer needs when material is unavailable at their own location. While individual transfers are a normal part of operations, repeated transfer activity may reveal broader patterns in how inventory moves across a district.

This project examines whether one branch is functioning as an informal regional support hub by fulfilling a disproportionate share of transfer requests for surrounding locations. The analysis focuses on identifying which branches rely most heavily on this support and whether the same materials are being requested repeatedly.

The goal is to determine whether recurring transfer activity represents predictable regional deman that could be planned for more proactively. Identifying these patterns could support better inventory planning while reducing reliance on reactive, one-off transfer requests.

## Methodology

Transfer activity was measured using **unique transfer orders** rather than total item quantity. A single transfer order may contain multiple product lines, while quantities can represent different units of measure across products. To avoid overstating transfer activity, a unique transfer identifier was created in Excel to distinguish individual transfer orders from their underlying line items.
