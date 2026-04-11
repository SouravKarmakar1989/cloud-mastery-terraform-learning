# RDS Custom for Oracle and Microsoft SQL Server

## Pointwise No-Loss Summary

1. RDS Custom provides managed DB benefits while allowing deeper host/database customization.
2. Supported scope highlighted for:
   - Oracle,
   - Microsoft SQL Server.

## What RDS Custom Adds

1. Access to underlying OS and DB-level internals.
2. Ability to customize internal settings.
3. Ability to install patches and enable native features.
4. Access path to underlying EC2 via SSH or SSM Session Manager.

## Operational Guidance

1. Recommended to disable/adjust automation mode before heavy customization.
2. Recommended to take snapshot before custom changes because direct host access can break configurations.

## RDS vs RDS Custom Summary

1. RDS: full AWS-managed DB + OS, no low-level access.
2. RDS Custom: Oracle/SQL Server-focused option with full admin-level customization ability.

## Outcome

1. Lecture positions RDS Custom as controlled escape hatch when managed defaults are insufficient for Oracle/SQL Server operational requirements.
