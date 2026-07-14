# `Acquisition` — CSM 模块接口文档

## 功能简述

`Acquisition` 模块用于生成连续波形数据（示例中为模拟正弦/方波），并通过状态广播将采样结果发布给下游模块。

---

## 模块信息

| 属性           | 值                                 |
| -------------- | ---------------------------------- |
| LabVIEW 版本   | ≥ 2017                             |
| 支持的操作系统 | Windows                            |
| 支持 RT        | ✅ 支持                          |
| 支持 64-bit    | ✅ 支持                            |
| 所属模块组     | `Acquisition.lvlib`                |

---

## 依赖项

| 依赖                                                                                                | 类型 |
| --------------------------------------------------------------------------------------------------- | ---- |
| [Communicable-State-Machine](https://github.com/NEVSTOP-LAB/Communicable-State-Machine)             | 必须 |
| [CSM-MassData-Parameter-Support](https://github.com/NEVSTOP-LAB/CSM-MassData-Parameter-Support)     | 必须 |

---

## API 接口（消息接口）

### `API: Start`

启动采集流程（示例配置为约每 200ms 生成一批数据）。

- **参数**：N/A
- **响应**：N/A

### `API: Stop`

停止采集流程。

- **参数**：N/A
- **响应**：N/A

---

## 状态广播接口

### `Acquired Waveform`

**默认广播类型**：`Status`

发布最新采集到的波形数据，供 UI、算法、日志等模块订阅。

- **参数**：`MassData` — `Waveform[]`：一维波形数组

---

## 属性接口

采样参数通过前面板控件配置，不提供固定的外部属性接口。

---

## 调用限制与注意事项

> [!IMPORTANT]
>
> - 采集参数建议在启动前配置完成。
> - `API: Start` 与 `API: Stop` 成对使用。

---

## 使用示例

```csm
API: Start -@ Acquisition
Acquired Waveform@Acquisition >> API: Log@Logging -><register>
API: Stop -@ Acquisition
```
