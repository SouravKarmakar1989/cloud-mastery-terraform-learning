# Kubernetes Knowledge Base - Master Index

This is the canonical workspace for Kubernetes-only source material, zero-loss extraction outputs, derived systems, study guides, indexes, reports, cache artifacts, and Kubernetes-specific build scripts.

## Workspace Map
- Raw transcript root: `sources/course-outputs/`
- Zero-loss extraction root: `sources/zero-loss/`
- Curated study root: `study/`
- Derived system root: `derived/`
- Intermediate build root: `build/intermediate/`
- Build scripts root: `build/scripts/`
- Reports root: `reports/`
- Cache root: `cache/`

## Start Here
- [Reading order](indexes/00_reading_order.md)
- [Topic index](indexes/01_topic_index.md)
- [Master learning path](study/learning-path/00_k8s_master_learning_path.md)
- [Phase 1: Foundations and control plane](study/phases/PHASE-1_foundations_and_control_plane.md)
- [Troubleshooting index](study/troubleshooting/00_troubleshooting_index.md)
- [Knowledge system manifest](derived/knowledge-system/KNOWLEDGE_SYSTEM_MANIFEST.md)
- [Normalization manifest](derived/normalized-learning-system/NORMALIZATION_MANIFEST.md)
- [Extraction run report](reports/K8S_EXTRACTION_RUN_2026-04-07.md)

## Source Coverage
| Course Output | Transcript Files |
|---|---:|
| `certified-kubernetes-administrator-with-practice-tests` | 200 |
| `certified-kubernetes-application-developer` | 134 |
| `learn-kubernetes` | 46 |
| **Total** | **380** |

## Generated Content
| Area | Files |
|---|---:|
| Zero-loss extraction files | 380 |
| Learning path docs | 2 |
| Normalized concept docs | 75 |
| Phase study guides | 9 |
| Troubleshooting guides | 7 |
| Cross-cloud guides | 7 |
| Index docs | 5 |
| Intermediate section maps | 42 |
| Intermediate merged docs | 1 |
| Report docs | 1 |

## Extracted Non-Empty Transcript Lines
| Metric | Value |
|---|---:|
| **Total** | **380** |

## Build And Maintenance
- Python extraction: [extract_k8s_zero_loss.py](build/scripts/python/extract_k8s_zero_loss.py)
- Python knowledge system build: [build_k8s_knowledge_system.py](build/scripts/python/build_k8s_knowledge_system.py)
- Python normalized system build: [build_k8s_normalized_system.py](build/scripts/python/build_k8s_normalized_system.py)
- PowerShell concept map build: [build_global_concept_map_task_d.ps1](build/scripts/powershell/build_global_concept_map_task_d.ps1)
- PowerShell normalized concepts build: [build_normalized_concepts_task_e1.ps1](build/scripts/powershell/build_normalized_concepts_task_e1.ps1)
- PowerShell phase guide build: [build_phase_study_guides_task_g.ps1](build/scripts/powershell/build_phase_study_guides_task_g.ps1)
- Control docs: [build/control](build/control/)

## Derived Systems
- [Knowledge system](derived/knowledge-system/)
- [Normalized learning system](derived/normalized-learning-system/)

## Notes
- The canonical folder name is `Kubernetes`.
- Kubernetes material should be read from and regenerated into this workspace only.
- Shared multi-domain tooling remains outside this folder under `apps/knowledge-pipeline/`.
