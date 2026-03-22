---
name: daily-digest
description: 当需要把多个部门日报收敛成公司级 daily digest 时使用。
disable-model-invocation: false
allowed-tools: Read, Glob, Grep, Bash
---

生成 company daily digest。

步骤：

1. 阅读 [../../../docs/templates/company-daily-digest.md](../../../docs/templates/company-daily-digest.md)。
2. 收集 `departments/*/workspace/reports/daily/` 最近的日报。
3. 按公司级视角提炼输入、输出、blockers、cross-department risks。
4. 输出写入 `workspace/status/digests/`。
