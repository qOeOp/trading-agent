---
name: retro
description: 当需要做一轮 company-level retro / process audit 时使用。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash
---

生成 company-level process audit。

步骤：

1. 阅读 [../../../docs/templates/process-audit.md](../../../docs/templates/process-audit.md)。
2. 收集 department retros、daily digests、checkpoint、postmortem。
3. 找出重复摩擦、handoff 失败、流程瓶颈和需要试点的改进。
4. 输出写入 `workspace/status/process-audits/`。
