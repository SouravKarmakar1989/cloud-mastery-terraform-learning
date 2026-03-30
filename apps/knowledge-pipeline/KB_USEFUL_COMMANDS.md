# KB Useful Commands

Scans treat "up to date" as coverage of technical transcript files only. Intro, exam-prep, congratulations, cleanup, and generated helper artifacts are ignored by default.

- KB delta scan: `/kb-auto-update-on-new-transcripts scan_mode=delta strictness=high`
- KB full scan: `/kb-auto-update-on-new-transcripts scan_mode=full strictness=high`
- KB module scan: `/kb-auto-update-on-new-transcripts scan_mode=module module_paths=outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM),outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance strictness=high`
- KB full scan no-create: `/kb-auto-update-on-new-transcripts scan_mode=full strictness=high create_mode=never`
- KB folder-specific delta: `/kb-auto-update-on-new-transcripts scan_mode=delta new_output_folder=outputs/aws-certified-cloudops-associate strictness=high`
