# Project Structure

## 顶层目录

- `README.md`: 仓库总览
- `CLAUDE.md`: 项目宪法
- `AGENTS.md`: 指向同一套宪法
- `docs/`: 稳定规则、研究、模板
- `departments/`: 部门原子子树
- `workspace/`: 公司级 append-only memory
- `.claude/`: Claude Code 项目配置
- `.codex/`: Codex 项目配置
- `.agents/skills/`: Codex 仓库级技能
- `codex/rules/`: Codex 规则
- `scripts/`: 基础脚本

## docs/

- `charter/`: 使命、阶段边界、原则
- `organization/`: org chart、decision rights
- `workflows/`: 决策与 review 流程
- `memory/`: 记忆架构说明
- `research/`: 前沿实践与技术调研
- `templates/`: 标准化输出模板

## departments/

每个部门目录都应该包含：

- `README.md`: 本部门职责与 owned paths
- `AGENTS.md`: 局部指令，供在该目录下启动 Codex 时加载
- `charter.md`: 部门章程
- `interfaces.md`: 输入输出协议
- `workspace/`: 本部门运行态文档

推荐子结构：

- `workspace/intake/`
- `workspace/memos/`
- `workspace/outputs/`
- `workspace/reports/daily/`
- `workspace/reports/retros/`

## workspace/

公司级 `workspace/` 不再保存会被多个线程同时编辑的大文件。
采用 append-only 结构：

- `briefs/`: Founder brief 与项目 brief
- `intake/inbox/`: Founder 输入原始物料
- `intake/triage/`: triage 结果
- `research/sources/`: 来源与研究条目
- `decisions/log/`: 单条决策记录
- `status/digests/`: 公司级日报
- `status/process-audits/`: 公司级 retro / process audit
- `status/snapshots/`: 状态快照
- `archive/`: 历史归档

## 约束

1. `docs/` 是规则层。
2. `departments/` 是 bounded context 层。
3. `workspace/` 是公司级 append-only memory 层。
4. 任何进入 Founder 审阅的内容必须先存在于部门 workspace 或公司 memory 中。
