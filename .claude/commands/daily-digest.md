---
description: 汇总最近的部门日报，生成 company daily digest。
---

请按以下顺序工作：

1. 读取 [../../docs/workflows/process-compounding-cadence.md](../../docs/workflows/process-compounding-cadence.md)
2. 读取 [../../docs/templates/company-daily-digest.md](../../docs/templates/company-daily-digest.md)
3. 优先运行 `./scripts/new_company_digest.sh [date]` 生成 company daily digest 骨架
4. 收集 `departments/*/workspace/reports/daily/` 中对应日期的日报
5. 审阅脚本生成的骨架，补充真正的公司级判断、风险和 Founder escalation
6. 写入 `workspace/status/digests/` 下的新文件
