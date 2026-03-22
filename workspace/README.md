# Workspace

这里是公司级 memory 根目录，不存放长期宪法，也不再存放会被多个线程同时改写的共享大文件。

规则：

1. Founder 可看的最终内容可以从部门 workspace 汇总到这里。
2. 公司级写入默认 append-only。
3. 批准后的结论新增一条 decision log entry。
4. 状态更新新增一条 snapshot。
5. 过期内容归档，不直接删除。
