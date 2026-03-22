---
description: 发起 Founder meeting。支持 governance / vision / requirements / brainstorming 四类会议。
---

请按以下顺序工作：

1. 读取 [../../docs/workflows/founder-meeting-taxonomy.md](../../docs/workflows/founder-meeting-taxonomy.md)
2. 先识别当前 meeting type：
   - governance
   - vision
   - requirements
   - brainstorming
3. 根据 meeting type 决定主持角色、输入材料和模板：
   - governance -> [../../docs/workflows/founder-governance-meeting-loop.md](../../docs/workflows/founder-governance-meeting-loop.md) + [../../docs/templates/governance-meeting-brief.md](../../docs/templates/governance-meeting-brief.md)
   - vision -> [../../docs/templates/vision-meeting-brief.md](../../docs/templates/vision-meeting-brief.md)
   - requirements -> [../../docs/templates/requirements-meeting-brief.md](../../docs/templates/requirements-meeting-brief.md)
   - brainstorming -> [../../docs/templates/brainstorming-notes.md](../../docs/templates/brainstorming-notes.md)
4. 判断当前 meeting 是否涉及 `volatile` 外部信息：
   - 市场资讯、实时价格、宏观新闻
   - Claude Code / Codex / MCP / tools 最新能力
   - 社区 best practice、博客、开源仓库的最新做法
   - 其他显著可能过时的信息
5. 如果涉及 volatile 信息：
   - 在形成正式结论前先做 freshness check
   - 在输出中加入 `Verification date`、`Sources reviewed`、`What remains unverified`
   - 若暂时没有完成 freshness check，明确标记 `needs freshness check`，不得包装成已验证结论
6. 生成对应 meeting brief
7. 若会议进入明确结论或改进方向，生成 meeting minutes 草稿，并指出后续应进入哪个正式 workflow
