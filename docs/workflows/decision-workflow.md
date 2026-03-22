# Decision Workflow

更新日期：`2026-03-22`

## Divergent Hypotheses

1. 让多个 agent 自由讨论后自动收敛。
2. 让 Founder 参与每一步细节。
3. 采用阶段门治理：先独立产出，再交叉 review，最后由 Chief of Staff 汇总给 Founder。

## Convergence

采纳第 3 条路径。

原因：

- 能让 Founder 只看高密度决策包。
- 能保留反对意见和证据链。
- 能控制自动化权限扩张速度。

## Gate 0: Founder Brief

Owner: `Founder`

输出：

- 问题定义
- 当前直觉
- 约束与禁区
- 希望看到的最终输出格式

模板：

- [docs/templates/founder-brief.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/founder-brief.md)

## Gate 1: Problem Framing

Owner: `Chief of Staff`

输入：Founder brief

输出：

- 单一问题陈述
- 本轮非目标
- 需要哪些角色参与
- 何时必须升级给 Founder

## Gate 2: Independent Research

Owners:

- `Product Thesis Lead`
- `Knowledge & Memory Lead`
- `Risk & Quality Lead`

输出：

- Research memo
- 关键证据
- 反证
- 未知数

模板：

- [docs/templates/research-memo.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/research-memo.md)

## Gate 3: Cross Review

Owner: `Risk & Quality Lead`

要求：

- 每个角色至少 review 一个其他角色的输出。
- 记录 strongest dissent。
- 标记必须返工的漏洞。

## Gate 4: Decision Pack

Owner: `Chief of Staff`

输出必须包含：

1. Decision
2. Why now
3. Evidence
4. Dissent
5. Risks
6. Tradeoff
7. Ask from Founder
8. Next 7 days

模板：

- [docs/templates/decision-pack.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/decision-pack.md)

## Gate 5: Founder Review

Owner: `Founder`

Founder 只做：

- 批准
- 驳回
- 增加约束
- 要求追加反证

## Gate 6: Memory Writeback

Owner: `Knowledge & Memory Lead`

必须回写到：

- [workspace/decisions/log](/Users/vx/WebstormProjects/trading-agent/workspace/decisions/log)
- [workspace/status/snapshots](/Users/vx/WebstormProjects/trading-agent/workspace/status/snapshots)

没有完成 writeback，本轮工作视为未闭环。

## 常驻运营回路

除了上面的通用决策 workflow，公司还存在 3 条常驻回路：

1. `Research-to-Thesis Loop`
   - Market Intelligence 提供清洗后的信号
   - Strategy Research 形成 thesis
   - Risk Office 审核
   - Position Operations 承接

2. `Position Monitoring Loop`
   - Position Operations 监控仓位
   - 当条件满足时触发 decision update
   - Risk Office 判断是否需要升级
   - Founder 只接收高密度更新，不接收原始流水

3. `Founder Input Evolution Loop`
   - Founder 提供物料
   - Learning & Evolution triage
   - 相关部门研究是否值得吸收
   - 若通过，则更新 playbook / workflow / strategy

详细见：

- [docs/workflows/founder-intake-evolution-loop.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/founder-intake-evolution-loop.md)
- [docs/workflows/worktree-parallelism.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/worktree-parallelism.md)
- [docs/workflows/agile-runnable-demo-policy.md](/Users/vx/WebstormProjects/trading-agent/docs/workflows/agile-runnable-demo-policy.md)
