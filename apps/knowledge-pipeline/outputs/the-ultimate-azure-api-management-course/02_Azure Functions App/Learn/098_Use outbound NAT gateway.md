# Use Outbound NAT Gateway with Azure Function App

## Pointwise No-Loss Summary

1. The video explains how to use NAT Gateway with Azure Function App.
2. NAT Gateway purpose explained: make all resources in a subnet (or VNet path) use one outbound public IP.
3. Benefit introduced early: controlled single outbound identity for external communication.

## Initial Resource Setup Flow

1. Create new Resource Group (example wording: RG NAT) in Australia East.
2. Create new Function App in that Resource Group.
3. Example naming: function app nat + initials.
4. Runtime selected: .NET version 6.
5. Region selected: Australia East.
6. Hosting tier selected: Premium.
7. Keep remaining settings at defaults and create Function App.
8. Create a new Virtual Network in same Resource Group (example name: vnet).

## Baseline Outbound IP Demonstration Before NAT

1. In Function App, create new HTTP trigger function.
2. Open Code + Test and copy a Microsoft docs sample that returns the visible IP.
3. Paste sample code and run test using GET method.
4. Response shows an IP address.
5. In Function App -> Properties, check outbound IP addresses.
6. Confirm returned IP matches one of Function App outbound IPs.
7. Stated objective: avoid exposing/changing among these app outbound IPs when calling external systems.

## VNet Integration for Function App

1. Open Function App -> Networking.
2. Enable VNet integration.
3. Add/select created VNet.
4. Create new subnet for Function App integration (example: subnet function app).
5. Use subnet block 10.0.1.0/24.
6. Apply configuration and wait for networking changes.

## Validation After VNet Integration but Before NAT

1. Test function again.
2. Returned IP still matches Function App outbound IP list.
3. Conclusion: VNet integration alone does not yet provide dedicated NAT egress IP.

## NAT Gateway Provisioning Steps

1. Create Public IP resource (example: pip nat gateway) in same Resource Group.
2. Create NAT Gateway resource (example: nat gateway vnet).
3. Region: Australia East.
4. Availability zones: none selected in demo.
5. Keep other settings at defaults.
6. In outbound IP settings, attach newly created Public IP.
7. Leave Public IP prefixes empty.
8. In subnet association, select VNet and Function App subnet.
9. Create NAT Gateway.

## Expected Network Behavior After NAT Association

1. NAT Gateway is now linked to subnet hosting Function App integration.
2. Outbound traffic from that subnet should use NAT public IP.
3. Function App original outbound IP set is no longer used for actual egress path in this scenario.

## Final Verification Performed

1. After NAT deployment, run function test again.
2. Copy returned IP from response.
3. Search this IP in Function App outbound IP addresses.
4. It is not found there.
5. Open Public IP resources and verify returned IP equals NAT Gateway Public IP.
6. This confirms outbound identity switched to NAT Gateway IP.

## Security and Operational Benefit Reiterated

1. NAT Gateway in front of subnet isolates underlying resource outbound IPs.
2. All outbound traffic from subnet uses one controlled public IP interface.
3. This improves security posture and simplifies allow-listing/firewall management.

## Cleanup Mentioned

1. Delete the Resource Group at end of exercise.
2. This removes Function App, VNet, NAT Gateway, Public IP, and related resources.

## Overall Takeaway

1. Function App egress control with NAT Gateway requires both VNet integration and subnet-level NAT association.
2. Verification should compare function-reported IP against Function App outbound list and NAT Public IP resource.
3. The practical outcome is predictable single-IP egress for secure integrations and external firewall rules.

