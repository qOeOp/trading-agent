# Vision Meeting Brief

- Date: 2026-03-22
- Host: Product Thesis Lead
- Problem we are really solving:
  主观交易者在建仓、持仓和退出过程中缺乏结构化证据、明确失效条件、及时更新机制和可追溯复盘，导致交易靠感觉、执行不稳定、亏损后无法系统改进。
- Target user:
  第一用户是 Vincent 自己。
  更精确地说，是“主动进行 discretionary trading、需要更强决策纪律和实时投研支持的交易者”。
- Why now:
  现在的 LLM + tool calling + MCP + 多 agent workflow，第一次让“自然语言提问 -> 多源信息整合 -> 结构化交易建议 -> 持仓监控更新 -> 复盘沉淀”成为一个连续系统。
  对 Vincent 而言，当前也存在明确的自用痛点：凭感觉下单、缺少证据链、情绪化平仓、没有标准化复盘。
- Core promise:
  不是先承诺“稳定赚钱”，而是先承诺：
  让每一笔交易都变得可解释、可监控、可修正、可复盘。
  长期再演化为一个 AI-native 的交易研究与决策 operating system。
- Non-goals:
  1. 第一阶段不做全自动高权限交易执行。
  2. 第一阶段不承诺收益率或胜率。
  3. 第一阶段不做面向大众的完整投研平台。
  4. 第一阶段不把所有想象中的部门都立即实体化成活跃 agent team。
- Strategic tensions:
  1. 我们是在做“交易副驾”，还是在做“AI 投研公司操作系统”？
  2. 第一阶段是优先提高决策纪律，还是优先追求研究广度？
  3. Agent 应该更像顾问，还是更像执行经理？
  4. Founder 需要少介入细节，但不能丢失方向定义权。
  5. 多部门公司形态很吸引人，但过早扩编会稀释产品楔子。
- Proposed direction:
  长期方向：
  建立一个 AI-native trading company operating system。公司内部有明确部门、治理层、记忆层、会议体系和持续进化机制。

  近端产品楔子：
  先做一个面向 Vincent 的 AI 交易决策副驾。
  它整合市场资讯、技术结构、风险约束、持仓监控和复盘，让交易从“拍脑袋”变成“有证据的持续判断”。

  第一阶段最小价值不是“替代人类交易员”，而是：
  1. 帮 Vincent 形成结构化交易 thesis
  2. 在持仓期间监控 thesis 是否失效
  3. 在交易后沉淀复盘和流程改进

  组织上：
  先以公司级 monorepo + 部门原子边界 + worktree-first 并行方式建设。
  先把治理和部门 charter 做实，再逐步实体化首批关键部门。
- Verification date:
  2026-03-22
- Verification mode:
  mixed
- Sources reviewed:
  1. Founder 当前描述与历史对话
  2. workspace/research/sources/2026-03-22-openai-codex-docs.md
  3. workspace/research/sources/2026-03-22-claude-code-docs.md
  4. 当前仓库内的组织、流程与治理设计文档
- What remains unverified:
  1. 真实用户需求目前仍以 Founder 自用场景为主，尚未经过外部用户访谈验证
  2. 第一阶段产品楔子的市场普适性尚未验证
  3. “AI-native trading company operating system” 作为长期品牌定位，目前仍是内部战略假设
- Decisions needed from Founder:
  1. 长期身份是否接受定义为 “AI-native trading company operating system”？
  2. 第一阶段产品楔子是否接受定义为 “AI 交易决策副驾”，而不是完整自动投研团队？
  3. 第一阶段最先支持的标的是不是只收敛到 BTC？
  4. 第一批要优先实体化的两个部门是否应当是：
     - Strategy Research
     - Position Operations
  5. Founder 是否接受第一阶段以“提升决策质量和纪律”为核心成功标准，而不是先用收益承诺定义产品？
