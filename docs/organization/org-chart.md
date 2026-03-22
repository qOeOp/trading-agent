# Org Chart

更新日期：`2026-03-22`

## 设计结论

我们不采用传统职能大部门，也不采用无人负责的“agent 议会”。
我们采用两层结构：

1. `治理层`：负责方向、规则、质量门、记忆和自动化边界
2. `部门层`：映射未来产品模块与运营闭环

当前最佳结构是：

```text
Founder / Principal
└── Chief of Staff / Operating System Lead
    ├── Product Thesis Lead
    ├── Knowledge & Memory Lead
    ├── Workflow & Automation Lead
    └── Risk & Quality Lead
    └── Compounding Engineering Lead
        ↓ governs and coordinates
    ├── Market Intelligence Department
    ├── Strategy Research Department
    ├── Position Operations Department
    ├── Risk Office
    └── Learning & Evolution Department
```

## 角色定义

### Founder / Principal

- 定义使命、北极星和禁区。
- 只在阶段门和方向性冲突上介入。
- 对最终 go / pause / kill 负责。

### Chief of Staff / Operating System Lead

- 统筹节奏、owner、升级机制、汇报格式。
- 把 Founder 的模糊意图改写成可执行 brief。
- 对组织是否“可运行、可追责、可升级”负责。

### Product Thesis Lead

- 负责问题定义、非目标、范围收缩、阶段目标。
- 负责把 research 收敛成明确提案。
- 不负责记忆系统和自动化权限。

### Knowledge & Memory Lead

- 负责 taxonomy、source of truth、decision log、归档策略。
- 负责防止文档分叉和历史失忆。
- 不负责业务优先级。

### Workflow & Automation Lead

- 负责 agent workflow、MCP、skills、hooks、commands、tool routing。
- 负责把组织动作变成稳定流程。
- 不得绕过风险门。

### Risk & Quality Lead

- 负责红队、审计、质量门、回滚条件、发布前豁免。
- 拥有 `stop-the-line` 权。
- 对“组织自嗨”和“低质量自动化”保持制度化反对。

### Compounding Engineering Lead

- 负责持续扫描主流多 agent、vibe coding、context engineering、compound engineering 的高信号实践。
- 负责审阅各部门日报、checkpoint、retro 和流程偏差。
- 负责提出流程实验、角色边界优化、playbook 更新和协作效率改进。
- 负责主持 Founder governance meeting，但不替代 Chief of Staff 的运营承诺管理。
- 不负责业务方向拍板，但负责持续提高公司的“做事方式质量”。

## 组织规则

1. 每个主题必须指定一个 DRI。
2. Risk & Quality Lead 可以否决进入下一 gate。
3. Chief of Staff 负责把分歧整合成可供 Founder 拍板的选项集。
4. Knowledge & Memory Lead 负责确认最终结论已写入 canonical memory。
5. 部门不是为了“看起来完整”，而是为了稳定承接一类长期职责。
6. 初期每个部门可以只有一个 Lead 和若干 skills，不需要立刻扩成多人或多 agent。
7. Compounding Engineering Lead 不是普通研究员，而是流程复利和组织操作质量的 owner。

## 为什么现在要有部门层

你的 vision 已经不是单个 agent，而是一家公司。

这家公司至少要能稳定处理 5 类长期工作：

1. 获取和清洗市场信息
2. 形成和验证交易策略
3. 管理仓位与持仓中的更新决策
4. 控制风险
5. 持续吸收 Founder 输入并进化公司

如果没有部门层，这些能力都会挤进同一个“职业经理人”里，最后只会变成一个过载的协调器。
