# Vision Meeting Brief

- Date: 2026-03-22
- Host: Product Thesis Lead
- Problem we are really solving:
  面向主动交易者，当前真正的问题不是“拿不到信息”，而是拿到的信息无法稳定转化为结构化 thesis、明确失效条件、持仓期间的持续更新与交易后的可追溯复盘。
  结果就是：建仓靠感觉，持仓靠情绪，平仓靠恐慌，长期无法稳定进化决策质量。
- Target user:
  第一用户仍然是 Vincent 自己。
  但从产品定义上，应该更精确地理解为：
  “需要高质量投研整合、纪律系统、持仓监控和复盘闭环的主动型 discretionary trader。”
- Why now:
  1. LLM + MCP + tool calling + structured workflows 已经足够支撑“研究 -> 论证 -> 监控 -> 复盘”的连续闭环。
  2. 传统交易软件强在图表和执行，不强在非结构化信息整合、证据链组织和 thesis 生命周期管理。
  3. Vincent 本人存在真实高频自用场景，足够支撑第一阶段 product discovery。
- Core promise:
  第一阶段不承诺“帮用户赚钱”，而是承诺：
  把交易从离散的感觉行为，提升成一套可解释、可质疑、可更新、可复盘的决策操作系统。

  长期愿景再上升为：
  一个 AI-native trading company operating system。
- Non-goals:
  1. 第一阶段不做面向大众的完整投研 SaaS。
  2. 第一阶段不做高权限自动交易执行。
  3. 第一阶段不承诺收益率、胜率或稳定 alpha。
  4. 第一阶段不把“公司内部所有部门能力”全部暴露成对外产品功能。
  5. 第一阶段不同时覆盖太多资产类别和宏观子系统。
- Strategic tensions:
  1. 我们是在做“Founder 自用交易副驾”，还是在做“未来可复制的交易公司 OS”？
  2. 第一阶段最重要的是提高决策纪律，还是扩大研究覆盖面？
  3. 产品表层应该像一个交易 assistant，还是像一个内部投研董事会？
  4. 公司内部部门化能力很诱人，但产品楔子必须足够窄，否则演示价值会被组织复杂度吞掉。
  5. 市场信息的 freshness 与 source credibility 是核心壁垒，但第一阶段不该被“全网最早资讯”这个命题拖死。
- Proposed direction:
  长期方向：
  建设一个 AI-native trading company operating system。内部拥有治理层、部门层、记忆层、会议层、策略层和流程复利层。

  近端产品楔子：
  先做一个面向 Vincent 的 AI 交易决策副驾，外部只暴露少数高价值表面：
  1. 交易机会判断
  2. thesis card 生成
  3. 持仓监控与更新建议
  4. 交易后复盘记录

  内部能力映射：
  1. Market Intelligence 负责资讯与 source verification
  2. Strategy Research 负责 thesis 与 setup 研究
  3. Position Operations 负责持仓状态、触发器与更新建议
  4. Risk Office 负责止损、仓位、风控与 dissent
  5. Learning & Evolution 负责复盘、流程优化与策略吸收

  第一版 demo 不该展示“我们部门很多”，而该展示：
  问一个具体标的，系统能给出一张严肃的交易决策卡，并在条件变化时更新它。
- Verification date:
  2026-03-22
- Verification mode:
  internal-only
- Sources reviewed:
  1. Founder 在本线程中的 vision 描述与后续补充
  2. 现有 `vision-meeting-v1` brief 和 notes
  3. 当前仓库中的组织、治理、meeting taxonomy 与 freshness gate 文档
- What remains unverified:
  1. 除 Founder 自用外，外部相似用户是否愿意为这种“交易纪律 OS”持续使用或付费
  2. 市场资讯 source-verification 对第一阶段实际价值的边际贡献有多大
  3. 未来对外产品表层应更像“assistant”还是“operating console”
- Decisions needed from Founder:
  1. 你是否接受第一阶段产品定义为“AI 交易决策副驾”，而不是“完整 AI 投研团队产品化”？
  2. 第一阶段是否只收敛到一个资产和少数时间框架，例如只做 BTC？
  3. 第一版 demo 的唯一成功标准，是否定义为“能输出可执行的 thesis card 并可跟踪更新”，而不是收益表现？
  4. 产品表层是否刻意隐藏大部分内部部门复杂度，只把它们作为内部生产系统存在？
  5. 你是否接受第一阶段把“source verification / earliest-source hunting”降为重要但非主舞台能力？
