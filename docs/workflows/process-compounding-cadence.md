# Process Compounding Cadence

更新日期：`2026-03-22`

## 收敛结论

流程复利不是靠偶尔开一次“优化会”，而是靠固定节奏。

公司采用五层节奏：

1. 每日部门日报
2. 每日 company daily digest
3. 每周 checkpoint
4. 每周 retro / process audit
5. 周期性 frontier scan
6. 周期性 governance surface audit

## Daily

每个部门每天至少沉淀一条日报。

最小字段：

1. 今天输入了什么
2. 今天输出了什么
3. 被谁阻塞
4. 哪个 handoff 有摩擦
5. 哪个流程最浪费时间

模板：

- [docs/templates/daily-department-report.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/daily-department-report.md)

标准落盘位置：

- `departments/<department>/workspace/reports/daily/`

## Company Daily Digest

由 `Chief of Staff` 汇总各部门日报，形成公司级运营摘要。

它关注：

1. 今天公司整体输入了什么
2. 今天公司整体产出了什么
3. 哪些 blocker 正在阻塞多个部门
4. 哪些 cross-department commitments 有风险
5. 哪些事项可能需要升级给 Founder

模板：

- [docs/templates/company-daily-digest.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/company-daily-digest.md)

标准落盘位置：

- `workspace/status/digests/`

## Weekly Checkpoint

治理层每周审阅一次：

1. 哪些部门在重复做相同工作
2. 哪些流程有热点冲突
3. 哪些 handoff 经常失败
4. 哪些 ritual 应该删掉或加强

## Retro / Process Audit

至少每周一次，由 `Compounding Engineering Lead` 主导。

输入：

- 各部门日报
- checkpoint
- postmortem
- Founder feedback

输出：

- process audit memo
- experiment proposal
- playbook update proposal
- governance meeting brief

模板：

- [docs/templates/process-audit.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/process-audit.md)

标准落盘位置：

- 部门 retro: `departments/<department>/workspace/reports/retros/`
- 公司级 process audit: `workspace/status/process-audits/`

## Frontier Scan

固定频率建议：

- 每周轻量扫描一次
- 每月深度研究一次

研究范围：

1. 主流多 agent coding 实践
2. Codex / Claude Code / MCP / hooks / skills / rules 的新能力
3. 大型项目治理、context engineering、compound engineering 的最新实践
4. 值得试点的新 repo 结构、workflow、review 机制

模板：

- [docs/templates/frontier-scan.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/frontier-scan.md)

## Governance Surface Audit

至少每周一次轻量审计、每月一次深度审计。

目标：

1. 防止治理相关 md 失控膨胀
2. 发现哪些规则过弱，应该升级为 skill / command / hook / rule
3. 发现哪些文档长期不触发、重复、无 owner 或无实际作用
4. 发现哪些决策在 volatile 主题上缺乏 freshness 证据

模板：

- [docs/templates/governance-surface-audit.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/governance-surface-audit.md)

## Adoption Gate

外部新思想不能直接写进公司制度。

必须经过：

1. Observe
2. Research
3. Pilot
4. Review
5. Writeback

## Founder Meeting Loop

`/meeting` 不是普通聊天命令，而是 Founder governance meeting。

输入由两部分组成：

1. `Chief of Staff` 的 company daily digest
2. `Compounding Engineering Lead` 的治理诊断与优化建议

会议输出：

1. current company health
2. key blockers
3. process frictions
4. decisions needed from Founder
5. approved improvement directions

会后流程：

1. `Compounding Engineering Lead` 生成 meeting minutes 和治理改进要求
2. 各部门 leader 提交 improvement plan
3. `Compounding Engineering Lead` review
4. 如涉及跨部门、流程制度、demo gate 或高权限自动化，交由 Founder / Chief of Staff 再 review
5. `Chief of Staff` 负责执行落地和跟踪
