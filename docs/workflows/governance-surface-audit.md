# Governance Surface Audit

更新日期：`2026-03-22`

## 问题定义

如果 `Compounding Engineering Lead` 只会不断新增 markdown，而不会：

- 剪裁无效文档
- 合并重复约束
- 把“必须发生”的流程升级为 hooks / rules / commands / skills
- 审计决策是否真的做了 web freshness 检查

那么它不是在优化公司，而是在制造上下文垃圾。

## 治理表面

本公司把以下对象统称为 `governance surface`：

1. `md` 文档
2. `templates`
3. `skills`
4. `commands`
5. `agents`
6. `hooks`
7. `rules`
8. `scripts`

## 核心原则

1. 不是所有规则都应该写成 md。
2. 不是所有规则都值得升级成 hooks 或 rules。
3. 规则越重要、越高频、越机械，越应该向更硬的控制面迁移。
4. 任何长期不触发、不被引用、不被执行的 md，都是裁剪候选。

## Promotion Matrix

### 保持为 md

适用：

- 宪法级原则
- 长期边界
- 需要大量判断的高层规则

### 升级为 skill / command

适用：

- 高频、结构化、可复用的工作流
- 例如：`/meeting`、`/daily-digest`、`/retro`

### 升级为 hook / rule

适用：

- 必须每次执行的底层约束
- 例如：危险命令拦截、禁止破坏性 git 操作、必须落盘的格式校验

### 升级为 agent

适用：

- 长期稳定、职责清晰、需要持续存在的角色

## 文档瘦身规则

每次 audit 都必须评估：

1. 这个 md 的 owner 是谁
2. 它解决什么问题
3. 它由什么触发
4. 最近一次被实际引用是什么时候
5. 它是否和其他文件重复
6. 它应该被：
   - keep
   - compress
   - merge
   - archive
   - delete
   - promote

## Freshness Audit

对以下主题，默认视为 `volatile`：

1. 市场资讯
2. 实时价格
3. 规则/工具最新能力
4. 社区 best practice
5. 最新新闻和时间敏感判断

这类内容如果没有：

- `Verification date`
- `Sources reviewed`
- `Conflicting sources`

就不应该直接进入正式决策。

## 重要边界

我不能诚实地说“hooks 可以完美证明 agent 做了足够的 web search”，因为这做不到。

能做的是：

1. 用流程和模板强制要求 freshness 字段
2. 用 review gate 阻止没有证据的结论进入正式决策
3. 用 commands / skills 提高检索动作的触发概率
4. 用 hooks / rules 处理那些真正能被机械校验的底层规则

## Audit 输出

每次 governance surface audit 至少产出：

1. keep list
2. compress / merge list
3. archive / delete list
4. promote-to-skill / command list
5. promote-to-hook / rule list
6. freshness failures
7. next experiments
