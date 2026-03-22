# Department Map

更新日期：`2026-03-22`

## 设计原则

部门层用来映射未来产品模块和长期经营职责。

但要注意：

1. `部门` 不等于立刻要创建一个常驻 agent。
2. 初期更合理的做法是：每个部门先有 `Department Charter + Lead + Skills + Templates`。
3. 只有当某部门的输入输出稳定后，才值得把它扩成独立多 agent 工作组。

## 部门总览

### 1. Market Intelligence Department

职责：

- 市场资讯抓取
- 来源发现与评级
- 时间戳校验
- 资讯清洗、去噪、去重
- 事件链和时间线整合

核心产出：

- source registry 更新
- event timeline memo
- 信号质量评估

上游输入：

- 外部新闻、社媒、宏观信息、链上信息
- Founder 提供的文章、视频、观点

下游服务：

- Strategy Research Department
- Position Operations Department
- Risk Office

### 2. Strategy Research Department

职责：

- 技术指标分析
- 多时间周期结构判断
- 宏观与叙事研究
- 策略假设提出
- 策略测试方案设计

核心产出：

- strategy memo
- trade thesis draft
- strategy change proposal

上游输入：

- Market Intelligence 的清洗信号
- Founder 的候选思想

下游服务：

- Position Operations Department
- Risk Office
- Learning & Evolution Department

### 3. Position Operations Department

职责：

- 记录和管理持仓
- 维护 portfolio ledger
- 监控仓位状态
- 当条件变化时触发更新建议
- 产出当前持仓解释和操作建议

核心产出：

- position book
- monitor alerts
- decision update memo

上游输入：

- 已批准的策略和交易 thesis
- 风险约束

下游服务：

- Founder
- Learning & Evolution Department

### 4. Risk Office

职责：

- 建仓前风险评审
- 仓位与组合风险约束
- 止损、止盈、仓位规则
- stop-the-line 与 kill-switch

核心产出：

- risk review
- exposure policy
- escalation note

上游输入：

- Strategy Research 的提案
- Position Operations 的当前状态
- 市场异常事件

下游服务：

- Founder
- Chief of Staff
- Position Operations Department

### 5. Learning & Evolution Department

职责：

- 接收 Founder 输入物料
- 复盘交易与流程
- 判断哪些新思想值得进入试点
- 把通过验证的经验回写进 playbook、workflow、部门 SOP

核心产出：

- material intake memo
- postmortem
- playbook update proposal

上游输入：

- Founder 的文章、视频、观点、交易思路
- 各部门 postmortem

下游服务：

- 全部门
- Chief of Staff
- Knowledge & Memory Lead

## Founder 输入入口

Founder 的输入不应该直接把所有部门打散。

应先进入：

`Learning & Evolution Department -> triage -> relevant departments -> Chief of Staff synthesis`

这样做的原因：

1. Founder 输入的质量参差不齐，必须先 triage。
2. 有价值的思想也需要被翻译成公司可执行语言。
3. 最后被采纳的是“制度化改进”，不是某一次灵感。

## 当前阶段建议

现在不要为每个部门创建一堆 agent。

当前更好的启动方式是：

1. 先保留 5 个治理层 agent
2. 给 5 个部门写 charter
3. 给每个部门补模板和工作协议
4. 再决定哪些部门值得先长出专属 agents
