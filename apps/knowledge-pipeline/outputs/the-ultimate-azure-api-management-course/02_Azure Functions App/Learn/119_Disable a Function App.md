# Disable a Function in Function App

## Pointwise No-Loss Summary

1. The video demonstrates how to disable a function and how disabled functions can still be accessed with master key.

## Demo Setup

1. Create new Resource Group (example wording: RG disabled).
2. Create new Function App (example naming: function app disable + initials).
3. Runtime/region used:
	- .NET 6,
	- Australia East.
4. Create HTTP trigger function.

## Disable and App Settings Behavior

1. In function view, use Disabled toggle.
2. Disabling adds/updates a function-specific app setting in Function App configuration.
3. Value behavior described:
	- 1 means disabled,
	- 0 means enabled.
4. Re-enabling function flips behavior back.

## Slot Scenario Demonstrated

1. Enable deployment slots and create a new slot (example name: slot).
2. In slot configuration, disable function in slot app settings.
3. Resulting concept in demo:
	- production slot can remain enabled,
	- slot can remain disabled to avoid accepting traffic.

## Accessing Disabled Function

1. Disabled function status is visible in function overview.
2. Invoke with default function key does not work when function is disabled.
3. Invoke with master key works even when function is disabled.
4. Demonstration uses function URL and key replacement to validate this behavior.

## Security Note Mentioned

1. Master key is highly sensitive.
2. It should not be shared outside the organization.

## Cleanup Mentioned

1. Delete disabled Resource Group at end.

## Overall Takeaway

1. Function disabling is controlled through function-specific app setting values.
2. Disabled functions block normal key-based access but remain callable with master key.
3. Slots allow environment-specific enabled/disabled behavior without removing deployed code.

