# Memory Architecture

更新日期：`2026-03-22`

## 第一性原则

- 长期规范不应和短期任务状态混放。
- 运行中的结论必须能追溯到来源。
- 临时上下文可以丢，决策依据不能丢。

## Layer 0: Constitution

作用：最稳定的组织规则与工具边界。

文件：

- [CLAUDE.md](/Users/vx/WebstormProjects/trading-agent/CLAUDE.md)
- [docs/charter/company-charter.md](/Users/vx/WebstormProjects/trading-agent/docs/charter/company-charter.md)

## Layer 1: Canonical Operating Docs

作用：组织结构、工作流、模板、目录规则。

文件：

- [docs/organization/org-chart.md](/Users/vx/WebstormProjects/trading-agent/docs/organization/org-chart.md)
- [docs/organization/decision-rights.md](/Users/vx/WebstormProjects/trading-agent/docs/organization/decision-rights.md)
- [docs/workflows/decision-workflow.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/decision-workflow.md)
- [docs/project-structure.md](/Users/vx/WebstormProjects/trading-agent/docs/project-structure.md)

## Layer 2: Operational Memory

作用：当前项目真实状态与可追溯记录。

文件：

- [workspace/status/snapshots](/Users/vx/WebstormProjects/trading-agent/workspace/status/snapshots)
- [workspace/status/digests](/Users/vx/WebstormProjects/trading-agent/workspace/status/digests)
- [workspace/status/process-audits](/Users/vx/WebstormProjects/trading-agent/workspace/status/process-audits)
- [workspace/decisions/log](/Users/vx/WebstormProjects/trading-agent/workspace/decisions/log)
- [workspace/research/sources](/Users/vx/WebstormProjects/trading-agent/workspace/research/sources)
- [workspace/intake/inbox](/Users/vx/WebstormProjects/trading-agent/workspace/intake/inbox)
- [workspace/intake/triage](/Users/vx/WebstormProjects/trading-agent/workspace/intake/triage)

## Layer 3: Active Working Set

作用：本周或本轮运行中的 brief、research memo、decision pack。

目录：

- [workspace/briefs](/Users/vx/WebstormProjects/trading-agent/workspace/briefs)
- [departments](/Users/vx/WebstormProjects/trading-agent/departments)

## Layer 4: Archive

作用：过期但仍需可追溯的历史文件。

目录：

- [workspace/archive](/Users/vx/WebstormProjects/trading-agent/workspace/archive)

## Writeback Rules

1. 新结论先进入 memo / decision pack。
2. Founder 拍板后，新增一条 decision log entry，而不是改总表。
3. 阶段状态新增一条 snapshot，而不是并行改一个 current-state 文件。
4. 公司日报新增一条 digest，retro 新增一条 process audit。
5. 来源新增或评级变化时，新增或更新单独 source note。
6. 过期 artifact 不删除，移动到 archive。

## 禁止事项

1. 不要把所有长期知识塞进 `CLAUDE.md`。
2. 不要把临时 brainstorming 当成 canonical truth。
3. 不要出现多个 source of truth。
4. 不要让多个线程同时编辑公司级共享总表文件。
