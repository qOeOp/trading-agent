# Founder Meeting Taxonomy

更新日期：`2026-03-22`

## 关键判断

是的，meeting 不止用来 retro 或治理改进。

Founder 和公司之间至少存在 4 类正式会议：

1. `Governance Meeting`
2. `Vision Meeting`
3. `Requirements Meeting`
4. `Brainstorming Session`

如果把它们都混成一种 meeting，会产生两个问题：

1. 会议目标混乱
2. 产出物失真

## 1. Governance Meeting

目的：

- 了解公司整体运行情况
- 识别流程摩擦、部门协作问题、改进方向
- 决定哪些治理变化值得推进

主持：

- `Compounding Engineering Lead`

输入：

- company daily digest
- process audit
- retro
- frontier scan

输出：

- governance meeting brief
- meeting minutes
- improvement directions

## 2. Vision Meeting

目的：

- 讨论产品愿景、长期方向、价值主张、边界和非目标
- 决定“我们到底在做什么”和“为什么现在做”

主持：

- `Product Thesis Lead`

支持角色：

- `Chief of Staff`
- `Compounding Engineering Lead`
- 必要时 `Risk & Quality Lead`

输入：

- Founder intuition
- 市场变化
- 研究结论
- 历史决策与失败教训

输出：

- vision brief
- thesis changes
- updated non-goals
- decision package for Founder approval

## 3. Requirements Meeting

目的：

- 把愿景翻译成阶段需求、范围、验收标准和 demo 边界

主持：

- `Chief of Staff`

支持角色：

- `Product Thesis Lead`
- `Workflow & Automation Lead`
- `Risk & Quality Lead`

输入：

- approved vision
- 当前阶段约束
- demo policy

输出：

- scoped requirements brief
- acceptance criteria
- non-goals
- department tasking

## 4. Brainstorming Session

目的：

- 在不立刻拍板的前提下，发散可能的产品切口、策略方向、组织改进方案

主持：

- 视主题而定
- 愿景议题通常由 `Product Thesis Lead`
- 治理议题通常由 `Compounding Engineering Lead`

关键规则：

1. brainstorming 不是决策
2. brainstorming 输出只能进入候选池
3. 若要变成正式执行，必须进入 research / review / decision 流程

输出：

- idea set
- hypothesis list
- candidate experiments

## Router Rule

`/meeting` 应该先识别会议类型，再加载相应模板和角色视角。

推荐默认类型：

1. 如果主题是“公司现在运行得怎么样”，默认 `governance`
2. 如果主题是“我们这个产品到底要做什么”，默认 `vision`
3. 如果主题是“这一版该做哪些功能”，默认 `requirements`
4. 如果主题是“先发散看看”，默认 `brainstorming`

## 与产品 vision 的关系

是的，agent 设计依赖产品 vision。

原因不是“因为 vision 很重要”这种空话，而是：

1. 没有 vision，就无法定义部门职责边界
2. 没有 vision，就无法定义什么信息值得保留、什么是噪音
3. 没有 vision，就无法定义 demo 的验收标准
4. 没有 vision，brainstorming 只会越发越散

所以：

- `vision` 决定 agent system 的方向
- `requirements` 决定 agent system 的近期任务
- `governance` 决定 agent system 的运转质量
- `brainstorming` 决定 agent system 的候选可能性

## Freshness Gate

不是所有 meeting 都需要先做 web search，但凡涉及以下 `volatile` 主题，就不能只靠现有记忆达成正式结论：

1. 市场资讯、实时价格、宏观新闻
2. Claude Code / Codex / MCP / tools 的最新能力
3. 社区 best practice、开源仓库、博客里最近流行的方法
4. 法规、规则、产品定价、版本能力这类明显会变化的信息

这类 meeting 必须遵守：

1. 在形成正式结论前，先做 freshness check
2. 输出中必须标明：
   - `Verification date`
   - `Sources reviewed`
   - `What remains unverified`
3. 如果只是 brainstorming，可以先发散，但所有外部事实性主张都必须打上 `needs freshness check`
4. 没过 freshness gate 的外部判断，不能直接升级为正式决策或流程变更

## Hard Truth

我不能诚实地说“公司能靠 hook 完美证明每一次 brainstorming 都搜过足够多的资料”，因为这做不到。

能做的是：

1. 把 freshness 要求写进 meeting 协议和模板
2. 在决策包和 research memo 里要求来源与验证日期
3. 让 `Compounding Engineering Lead` 定期做 governance surface audit，识别哪些地方仍然是弱约束
4. 只把真正机械、可校验的规则升级成 hooks / rules
