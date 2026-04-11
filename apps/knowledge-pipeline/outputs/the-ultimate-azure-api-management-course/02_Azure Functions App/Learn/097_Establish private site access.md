# Establish Private Site Access for Azure Function App

## Pointwise No-Loss Summary

1. This video builds on the previous private-endpoint scenario.
2. Previous scenario involved Service Bus, which cannot be placed directly inside a VNet.
3. This video demonstrates a simpler case where the client resource is in a VNet (VM), so access restriction policies can be used.

## VM Setup Used for the Test Client

1. Create a new virtual machine.
2. Create a new Resource Group for the VM (example wording: RG VM).
3. VM naming example used: VM01.
4. OS selected: Windows Server 2019.
5. Set VM username and password.
6. Open inbound port for easy testing in demo.
7. Security note explicitly stated: do not use this open-port approach in production.
8. Better production access method mentioned: Bastion Host.
9. Bastion was skipped in demo to avoid extra setup time.
10. In VM networking step, create a new VNet (example name: vnet).
11. Keep remaining VM settings at defaults and create VM.

## Function App Setup for Access Restriction Demo

1. Create a new Function App for testing.
2. Place it in VM Resource Group.
3. Example naming used: function app vm access.
4. Runtime selected: .NET version 6.
5. Region selected: Australia East.
6. Hosting plan selected: Consumption.
7. Keep other settings at defaults and create the Function App.

## Access Restriction Configuration Flow

1. Open Function App -> Networking.
2. Goal explained: only allow traffic from a specified VNet.
3. Baseline check first:
	- Open Function App URL before restriction.
	- Confirm it is publicly accessible initially.
4. Go to Access Restrictions.
5. Add new rule to allow VNet access.
6. Set rule priority to 100.
7. Set source type to Virtual Network.
8. Add/save the rule.

## Portal UX Nuance Explicitly Mentioned

1. The instructor notes that the portal UI is not ideal in this area.
2. Practical behavior described:
	- Enable Allow Public Access checkbox while configuring/viewing rules.
	- Configure rules.
	- Disable Allow Public Access again.
	- Save changes.
3. After saving, VNet allow rule remains in effect while other traffic is denied.

## Function Creation and Validation Steps

1. Return to Function App overview.
2. Create a new function directly in portal.
3. Choose HTTP trigger.
4. Get/copy the function URL.
5. Test from local machine (outside allowed VNet).
6. Expected and observed result: 403 Forbidden.

## VM-Based Access Validation (Allowed Path)

1. Download RDP file.
2. Connect to VM using configured credentials.
3. Disable enhanced security configuration on VM browser for test convenience.
4. Open browser in VM.
5. Copy function URL again and test from inside VM.
6. Expected and observed result: request succeeds.

## Behavior Confirmed by the Demo

1. Function App accepts traffic from the specifically allowed VNet.
2. Access from outside the allowed VNet is denied.
3. Any resource inside that allowed VNet can access the Function App endpoint.

## Cleanup Mentioned

1. Delete the VM Resource Group after testing.
2. This removes VM and related resources created for the exercise.

## Overall Takeaway

1. When the caller resource can be placed in a VNet, Function App access restrictions provide a simpler private-access pattern.
2. VNet-based allow rules can enforce endpoint isolation without requiring broad public exposure.
3. Validation should always include both denied external access and successful in-VNet access.

