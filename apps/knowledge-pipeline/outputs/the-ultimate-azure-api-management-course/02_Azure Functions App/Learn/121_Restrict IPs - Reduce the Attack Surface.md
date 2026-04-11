# Restrict IPs to Reduce Function App Attack Surface

## Pointwise No-Loss Summary

1. The video focuses on reducing attack surface by restricting who can access Function App.
2. Core idea: do not leave Function App open to all IPs worldwide.
3. Use access restriction policies to whitelist only required sources.

## Main Site Access Restriction Behavior

1. In Networking -> Access restrictions, public access can be enabled/disabled.
2. If public access is disabled, direct requests become forbidden.
3. Demo note: browser cache can temporarily mask effect; incognito shows real 403 behavior.

## Unmatched Rule Action Explained

1. Unmatched rule action is the catch-all behavior when no allow rule matches.
2. If unmatched action is set to deny, requests without matching rule are blocked.
3. Recommended approach in video:
  - keep unmatched action as deny,
  - add explicit allow rules for approved sources.

## Allow Rule Example in Demo

1. Add allow rule with priority (example: 100).
2. Rule source uses current client IP (looked up externally and entered as address block).
3. Configuration used in demo:
  - public access enabled,
  - explicit allow for current IP,
  - unmatched action deny.
4. Result: allowed IP can access app; unmatched traffic is denied.

## Source Types Covered

1. IPv4/IPv6 address or CIDR ranges.
2. Virtual Network source.
3. Service tag source.
4. Service tag example mentioned: Azure Front Door backend, with corresponding service/front-door identifier requirement.

## Main Site vs SCM (Management Site)

1. Access restrictions can be configured separately for SCM/advanced-tools management endpoint.
2. Option exists to reuse main-site rules for SCM.
3. Video guidance prefers tighter dedicated SCM rules instead of mirroring main site.
4. Reason: customers calling main app endpoint do not need management-site access.
5. Recommended SCM baseline in demo:
  - set unmatched action to deny,
  - add only specific allow entries (IP/VNet/service tag) for admins/developers.

## Overall Takeaway

1. Attack-surface reduction is achieved by moving from open access to explicit allow-listing.
2. Use deny-by-default for unmatched traffic and permit only known sources.
3. Apply stricter controls to SCM/management endpoint than public function endpoint where appropriate.

