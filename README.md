# trading-agent

一个为未来 `trading-agent` 产品准备的 AI-native 项目操作系统。

当前阶段**不写业务代码**。先把最关键的底座落盘：

- 组织结构与决策权
- 管理层与部门层的双层组织
- 公司级 monorepo 与部门原子边界
- 记忆分层与文档生命周期
- Codex / Claude Code 双工具协作基线
- skills / agents / hooks / rules / scripts 的最小可用骨架

## 当前目标

1. 让创始人只介入方向性问题与最终拍板。
2. 让“职业经理人 + 专家组 + 红队 + 记忆官”成为稳定工作流。
3. 让任何关键决策都能被追溯、被质疑、被复盘。
4. 在开始编码前，把项目治理做成可执行制度，而不是口头共识。

## 设计原则

- 单线程责任制：一个问题只能有一个 DRI。
- 阶段门治理：没有通过 gate，不进入下一阶段。
- 文档即制度：没写入 artifact 的结论视为不存在。
- 记忆分层：长期规范、运行态事实、临时上下文严格分开。
- 自动化克制：前期只上低风险 hooks、skills 和脚本，不做复杂全自动编排。
- freshness gate：涉及外部易变信息的研究、决策与会议产物，必须显式带验证日期与来源。

## 提交流程闸门

当前不是“每次文件一改就自动 commit”，那样会制造噪音历史，也会破坏 review 边界。

当前采用的是三层 gate：

1. `pre-commit`
   对 staged 的治理产物执行 freshness gate。
2. `pre-push`
   在 push 前重新跑 workspace baseline 和全量 freshness gate。
3. `GitHub Actions`
   在远程对 `push` / `pull_request` 再跑一次同样的检查。

这意味着：

1. 文件保存本身不会被强制提交
2. 但任何想进入版本历史的治理产物，都会经过本地和远程双重校验
3. 如果你还想更硬，可以在 GitHub 上把 `Governance Gates` 设为 `main` 的 required status check

## 仓库地图

- [CLAUDE.md](/Users/vx/WebstormProjects/trading-agent/CLAUDE.md): 项目宪法，供 Claude Code 与 Codex 共用。
- [docs/charter/company-charter.md](/Users/vx/WebstormProjects/trading-agent/docs/charter/company-charter.md): 公司章程与当前阶段边界。
- [docs/organization/org-chart.md](/Users/vx/WebstormProjects/trading-agent/docs/organization/org-chart.md): 初版 AI 管理层组织图。
- [docs/organization/department-map.md](/Users/vx/WebstormProjects/trading-agent/docs/organization/department-map.md): 部门地图、职责边界与接口说明。
- [docs/organization/decision-rights.md](/Users/vx/WebstormProjects/trading-agent/docs/organization/decision-rights.md): 决策权矩阵与升级规则。
- [docs/organization/compounding-engineering-lead.md](/Users/vx/WebstormProjects/trading-agent/docs/organization/compounding-engineering-lead.md): 复利工程治理官的职责、输入和节奏。
- [docs/workflows/decision-workflow.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/decision-workflow.md): Gate-based 决策工作流。
- [docs/workflows/founder-intake-evolution-loop.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/founder-intake-evolution-loop.md): Founder 物料进入公司并推动演化的闭环。
- [docs/workflows/worktree-parallelism.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/worktree-parallelism.md): 多 thread 并行和 worktree-first 规范。
- [docs/workflows/agile-runnable-demo-policy.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/agile-runnable-demo-policy.md): Founder 只看独立可运行版本的交付政策。
- [docs/workflows/process-compounding-cadence.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/process-compounding-cadence.md): 日报、retro、前沿扫描和流程优化节奏。
- [docs/workflows/founder-governance-meeting-loop.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/founder-governance-meeting-loop.md): Founder 与复利工程治理官的会议闭环。
- [docs/workflows/founder-meeting-taxonomy.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/founder-meeting-taxonomy.md): Founder 会议体系，区分 governance / vision / requirements / brainstorming。
- [docs/workflows/governance-surface-audit.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/governance-surface-audit.md): 治理表面审计，决定哪些规则该保留、压缩还是升级成更硬约束。
- [docs/memory/memory-architecture.md](/Users/vx/WebstormProjects/trading-agent/docs/memory/memory-architecture.md): 记忆存储与回写规则。
- [.githooks](/Users/vx/WebstormProjects/trading-agent/.githooks): 本地 `pre-commit` / `pre-push` 闸门。
- [.github/workflows/governance-gates.yml](/Users/vx/WebstormProjects/trading-agent/.github/workflows/governance-gates.yml): 远程 GitHub CI 闸门。
- [docs/research/frontier-practices-2026.md](/Users/vx/WebstormProjects/trading-agent/docs/research/frontier-practices-2026.md): 2026-03-22 调研结论与采用策略。
- [docs/project-structure.md](/Users/vx/WebstormProjects/trading-agent/docs/project-structure.md): 目录结构说明。
- [docs/templates](/Users/vx/WebstormProjects/trading-agent/docs/templates): 决策包、研究 memo、复盘等模板。
- [departments](/Users/vx/WebstormProjects/trading-agent/departments): 部门原子子树，每个部门拥有独立 charter、workspace 和局部指令。
- [workspace](/Users/vx/WebstormProjects/trading-agent/workspace): 公司级 append-only memory 根目录。
- [workspace/intake/inbox](/Users/vx/WebstormProjects/trading-agent/workspace/intake/inbox): Vincent 输入物料与候选思想入口。
- [.claude](/Users/vx/WebstormProjects/trading-agent/.claude): Claude Code 的 agents / skills / hooks / commands / settings。
- [.codex](/Users/vx/WebstormProjects/trading-agent/.codex): Codex 的项目配置与 custom agents。
- [.agents/skills](/Users/vx/WebstormProjects/trading-agent/.agents/skills): Codex 仓库级技能目录。
- [codex/rules](/Users/vx/WebstormProjects/trading-agent/codex/rules): Codex exec policy rules。
- [scripts](/Users/vx/WebstormProjects/trading-agent/scripts): 文档脚手架与结构校验脚本。

## 建议使用顺序

1. 先读 [CLAUDE.md](/Users/vx/WebstormProjects/trading-agent/CLAUDE.md)。
2. 再读 [docs/organization/org-chart.md](/Users/vx/WebstormProjects/trading-agent/docs/organization/org-chart.md) 和 [docs/workflows/decision-workflow.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/decision-workflow.md)。
3. 再读 [docs/workflows/worktree-parallelism.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/worktree-parallelism.md) 和 [docs/workflows/agile-runnable-demo-policy.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/agile-runnable-demo-policy.md)。
4. 运行 `./scripts/enable_git_hooks.sh`，启用本地 pre-commit freshness gate。
5. 选择一个部门，在对应子树内开 worktree 并执行任务。
6. 只在阶段门通过后，才让 workflow/automation 角色扩大自动化权限。
7. 用 `/meeting` 发起 Founder meeting，按主题自动进入 governance / vision / requirements / brainstorming。

## 常用脚本

```bash
./scripts/validate_workspace.sh
./scripts/enable_git_hooks.sh
./scripts/validate_freshness_gate.sh --staged
./scripts/new_decision.sh company "mvp-scope"
./scripts/new_research.sh market-intelligence "btc-source-quality"
./scripts/new_checkpoint.sh "weekly-sync"
./scripts/new_intake.sh "great-btc-video"
# 首个 commit 之后再使用
./scripts/new_worktree.sh strategy-research "thesis-loop-v1"
```

## 下一步

当前初版重点是“组织可运行”。下一轮应由你 review：

- org chart 是否合理
- 部门拆分是否过细或过粗
- 哪些部门先实体化成专属 agent team
- 复利工程治理官是否足够强，还是还该继续加权
- 哪些问题必须升级到 Founder
- 哪些自动化现在就该禁止
- 记忆结构是否足够简洁
