# Batch 2 task 05

| Deliverable | Result |
|---|---|
| Reader inventory and failure table | Recorded in [report.md](report.md), including field-level hex examples, the source revision and execution coverage. |
| JVM campaign | Passed 1,000,000 cases. Additional checks passed for stock saves, profile restoration and packed render frames. |
| Service campaign | Passed 224,003 in-memory Worker requests. The existing registry suite printed `REGISTRY OK`. |
| Build and seed | All mod classes compiled for Java 8. Both campaigns use `0xb2052026`. |
| Review | Branch `codex/b2-05-fuzzing` targets `sc-mod-workspace`. Game changes default off. |

The on-device lifecycle, socket timing and external relay were inspected at source only. Security-sensitive crash or bypass packet corpora are outside the submitted tests.
