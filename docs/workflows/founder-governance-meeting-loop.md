# Founder Governance Meeting Loop

更新日期：`2026-03-22`

## 收敛结论

你提出的方向是对的，但必须做一个关键分工：

- `Compounding Engineering Lead` 负责主持治理会议、审阅日报与 retro、提出流程优化建议
- `Chief of Staff` 负责公司级运营摘要、跨部门承诺与执行落地

否则 `Compounding Engineering Lead` 会同时变成：

1. 情报汇总官
2. 运营经理
3. 流程优化官
4. 组织执行官

这会过载，也会让它和 `Chief of Staff` 的边界失真。

## 正确结构

### Step 1: Department Daily Reports

每个活跃部门提交日报。

### Step 2: Company Daily Digest

`Chief of Staff` 汇总部门日报，形成公司级运营摘要。

### Step 3: Governance Meeting Brief

`Compounding Engineering Lead` 在 digest 基础上，叠加：

- 过程摩擦
- handoff 失败
- ritual 问题
- 值得吸收的前沿治理实践
- 建议 Founder 拍板的治理问题

### Step 4: Founder Meeting

Founder 用 `/meeting` 与 `Compounding Engineering Lead` 开会。

该角色向 Founder 呈现的不是原始日报，而是高密度治理会议包：

1. 公司现在运行得怎样
2. 哪些部门在卡住彼此
3. 哪些流程该优化
4. 哪些建议值得进入试点
5. 哪些问题需要 Founder 拍板

### Step 5: Meeting Minutes

会议结束后，`Compounding Engineering Lead` 产出：

- meeting minutes
- approved improvement directions
- departments impacted
- required improvement plans

### Step 6: Department Improvement Plans

相关部门 leader 提交本部门改进计划。

模板：

- [docs/templates/improvement-plan.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/improvement-plan.md)

### Step 7: Review and Rollout

`Compounding Engineering Lead` review 改进计划。

如果只是本部门局部优化，可以直接进入执行。
如果涉及：

- 跨部门协作协议
- 公司 ritual
- 高权限自动化
- Founder-facing demo gate

则必须交给 `Chief of Staff` 和必要时 `Founder` 复核。

### Step 8: Execution and Follow-up

`Chief of Staff` 负责执行、追踪和检查是否真正落地。

### Step 9: Writeback

最终写入：

- process audit
- decision log entry
- status snapshot
- playbook / SOP updates

## `/meeting` 应该输出什么

一个合格的 Founder governance meeting 输出至少包含：

1. Company Health
2. Department Highlights
3. Key Blockers
4. Process Frictions
5. Improvement Proposals
6. Decisions Needed From Founder
7. Next 7 Days

模板：

- [docs/templates/governance-meeting-brief.md](/Users/vx/WebstormProjects/trading-agent/docs/templates/governance-meeting-brief.md)
