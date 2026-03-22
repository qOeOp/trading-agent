# Departments

这里是公司级 monorepo 下的部门原子子树。

原则：

1. 每个部门是一个 bounded context。
2. 每个部门有自己的 charter、interfaces、workspace、局部 AGENTS。
3. 一个并行线程默认只写一个部门目录。
4. 跨部门靠 artifact handoff，不靠直接改对方文件。

当前部门：

- `market-intelligence`
- `strategy-research`
- `position-operations`
- `risk-office`
- `learning-evolution`
