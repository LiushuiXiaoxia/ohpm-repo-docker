# OHPM私仓工具Docker部署

---

**ohpm-reos** 需要非root用户运行，有点坑。

[官网文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/ide-ohpm-repo-overview-history-V5)

## 使用姿势

```
# 编译镜像
make build 

# 运行服务
make start

# 停止服务
make stop

# 查看最近日志
make log

# 进入容器
make shell
```

启动后，浏览器访问 `http://{ip}:8088/`, 默认账号是 `admin / 12345Qq!`