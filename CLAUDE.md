# Workspace Constitution

本仓库是一个 AI-native 项目操作系统，不是普通代码仓库。

## 当前阶段

- 阶段：`pre-code`
- 目标：先搭治理、文档、记忆、workflow、agents/skills/hooks/rules 骨架
- 暂不做：业务实现、复杂 CI 自动实现、重度多 agent 写代码

## 项目使命

为未来的 `trading-agent` 产品建立一套可持续、可审计、可扩展的 AI 公司工作章程，让 Founder 只在方向性问题与最终拍板时介入。

## 决策边界

- Founder 负责：使命、北极星、阶段 go/no-go、关键风险豁免。
- Chief of Staff / Operating System Lead 负责：组织节奏、owner 分配、升级规则、交付格式。
- Product Thesis Lead 负责：问题定义、范围、优先级、验收标准。
- Knowledge & Memory Lead 负责：taxonomy、source of truth、decision log、归档。
- Workflow & Automation Lead 负责：agents、skills、hooks、commands、MCP、自动化边界。
- Risk & Quality Lead 负责：红队、质量门、回滚条件、stop-the-line。
- Compounding Engineering Lead 负责：流程复利、前沿扫描、日常报告与 retro 审阅、跨部门协作优化。
- 各部门 Lead 负责：本部门产出、接口协议、内部 SOP 和向上汇报。

## 工作原则

1. 一个主题只能有一个 DRI。
2. 没有 artifact 的决定无效。
3. 任何“看起来很合理”的建议都要带证据和反证。
4. 自动化默认从只读或低风险动作开始。
5. 没有通过阶段门的工作，不进入下一阶段。
6. 一个线程一个 worktree，不共享同一工作目录并行编辑。
7. Founder-facing demo 必须是独立可运行的垂直切片，不展示半成品。

## 必须产出的 artifact

- Founder brief
- Research memo
- Decision pack
- Decision log entry
- Weekly checkpoint / postmortem

模板位置：

- [docs/templates/founder-brief.md](docs/templates/founder-brief.md)
- [docs/templates/research-memo.md](docs/templates/research-memo.md)
- [docs/templates/decision-pack.md](docs/templates/decision-pack.md)
- [docs/templates/postmortem.md](docs/templates/postmortem.md)

## 目录规则

- `docs/`: 稳定规则、章程、流程、模板
- `departments/`: 部门原子子树，每个部门独立拥有 charter、workspace 和局部说明
- `workspace/`: 运行态信息、决策记录、研究 memo、状态文件
- `.claude/`: Claude Code 项目级配置
- `.codex/`: Codex 项目级配置
- `.agents/skills/`: Codex 仓库级 skills
- `codex/rules/`: Codex exec policy rules
- `scripts/`: 结构脚本与文档脚手架

## 记忆规则

长期规范放在：

- [docs/charter/company-charter.md](docs/charter/company-charter.md)
- [docs/organization/org-chart.md](docs/organization/org-chart.md)
- [docs/organization/department-map.md](docs/organization/department-map.md)
- [docs/organization/decision-rights.md](docs/organization/decision-rights.md)
- [docs/organization/compounding-engineering-lead.md](docs/organization/compounding-engineering-lead.md)
- [docs/workflows/decision-workflow.md](docs/workflows/decision-workflow.md)
- [docs/workflows/founder-intake-evolution-loop.md](docs/workflows/founder-intake-evolution-loop.md)
- [docs/workflows/worktree-parallelism.md](docs/workflows/worktree-parallelism.md)
- [docs/workflows/agile-runnable-demo-policy.md](docs/workflows/agile-runnable-demo-policy.md)
- [docs/workflows/process-compounding-cadence.md](docs/workflows/process-compounding-cadence.md)
- [docs/workflows/founder-governance-meeting-loop.md](docs/workflows/founder-governance-meeting-loop.md)
- [docs/workflows/founder-meeting-taxonomy.md](docs/workflows/founder-meeting-taxonomy.md)
- [docs/memory/memory-architecture.md](docs/memory/memory-architecture.md)

运行态事实放在：

- [workspace/status/snapshots](workspace/status/snapshots)
- [workspace/decisions/log](workspace/decisions/log)
- [workspace/research/sources](workspace/research/sources)
- [workspace/intake/inbox](workspace/intake/inbox)

## 研究与工具使用

- OpenAI / Codex 相关问题优先查官方文档。
- Claude Code 相关问题优先查官方文档。
- 社区实践只作为补充，不得覆盖官方约束。
- 需要最新信息时必须显式标注日期。
- 对外部世界的 volatile 主题，默认先走 web / 官方文档 / source notes，而不是只靠内部知识库。
- 只有纯内部治理、Founder vision lock、本地仓库问题，才允许 `Verification mode: internal-only`。

## 自动化边界

当前允许优先建设：

- AGENTS / CLAUDE constitution
- department charters
- skills
- subagents
- hooks
- review workflow
- decision and research scaffolding
- worktree-first parallel execution

当前暂缓：

- 复杂 agent teams
- 高权限自动执行
- 自动发消息到外部系统
- 会改写大量文件的无人值守流程
- 还没有稳定 charter 的“空心部门”

## 原子边界

1. 在部门目录中启动的线程，只能主写本部门子树。
2. 公司级 `workspace/` 只允许 append-only 写入，不允许并行线程频繁改同一个总表文件。
3. 公司级规范文件只能由治理层角色修改。
4. 跨部门协作通过 artifact handoff，不通过直接改对方目录。

## 交付格式

所有提交给 Founder 的内容必须是决策包，不是流水账。

最小结构：

1. Decision
2. Why now
3. Evidence
4. Dissent
5. Risks
6. Ask from Founder
7. Next 7 days

## 启动顺序

1. 阅读本文件
2. 阅读 `docs/organization/` 与 `docs/workflows/`
3. 在目标部门目录创建独立 worktree
4. 新建 founder brief / research memo / department memo
5. 形成 decision pack
6. 以 append-only 方式回写 company memory
