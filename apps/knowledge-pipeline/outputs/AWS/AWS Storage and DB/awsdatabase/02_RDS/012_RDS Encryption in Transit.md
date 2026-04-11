# RDS Encryption in Transit

## Pointwise No-Loss Summary

1. Lecture focuses on network-level protection for RDS connectivity.
2. Primary controls discussed:
   - VPC/subnet design,
   - security groups,
   - network ACLs,
   - SSL/TLS enforcement.

## Network Placement Pattern

1. RDS should be in private subnet (no direct internet exposure).
2. Public-facing app tier (for example web server) may run in public subnet.
3. App tier communicates to DB over required DB port privately.

## Security Groups (Instance-Level Stateful Firewall)

1. Applied directly to specific RDS instance.
2. Rules define allowed source and allowed port/protocol.
3. Can allow source by IP/CIDR or by security group reference.
4. Granular control for only trusted client paths.

## Network ACLs (Subnet-Level Control)

1. Applied to entire subnet, affecting all traffic in/out of that subnet.
2. Provide additional defense layer beyond security groups.
3. Often used in conjunction with SGs for defense-in-depth governance.

## Encryption in Transit Concept

1. SSL/TLS encrypts traffic between DB client and RDS.
2. Protects against packet interception/eavesdropping.
3. Helps defend against man-in-the-middle style attacks.
4. Supports endpoint identity validation during secure handshake process.

## Handshake Flow (Conceptual)

1. Client and DB negotiate secure session parameters.
2. Data exchanged afterward is encrypted.
3. Session close/teardown also follows secure channel context.

## Enforcement Mentioned

1. SSL-only requirement can be enforced with DB engine parameter-group settings.

## Key Takeaway

1. Secure RDS connectivity requires layered network controls plus TLS encryption for client/database communications.
