# `Logging` — CSM 模块接口文档

## 功能简述

`Logging` 模块用于将采集到的 1D 波形数据持续写入 TDMS 文件，负责数据落盘与日志文件生命周期管理。

---

## 模块信息

| 属性           | 值                                 |
| -------------- | ---------------------------------- |
| LabVIEW 版本   | ≥ 2017                             |
| 支持的操作系统 | Windows                            |
| 支持 RT        | ❌ 不支持                          |
| 支持 64-bit    | ✅ 支持                            |
| 所属模块组     | `Logging.lvlib`                    |

---

## 依赖项

| 依赖                                                                                                | 类型 |
| --------------------------------------------------------------------------------------------------- | ---- |
| [Communicable-State-Machine](https://github.com/NEVSTOP-LAB/Communicable-State-Machine)             | 必须 |
| [CSM-MassData-Parameter-Support](https://github.com/NEVSTOP-LAB/CSM-MassData-Parameter-Support)     | 必须 |

---

## API 接口（消息接口）

### `API: Update Settings`

更新日志输出路径等配置参数。

- **参数**：`APIString` — `String`：数据目录完整路径  
- **响应**：N/A

### `API: Start`

启动记录流程，在目标目录创建按时间命名的 TDMS 文件。

- **参数**：N/A  
- **响应**：N/A

### `API: Log`

写入一批波形数据到当前 TDMS 文件。

- **参数**：`MassData` — `Waveform[]`：一维波形数组  
- **响应**：N/A

### `API: Stop`

停止记录并关闭文件资源。

- **参数**：N/A  
- **响应**：N/A

---

## 状态广播接口

该模块通常以文件写入为主，不强依赖对外状态广播。

---

## 属性接口

无公开属性接口。

---

## 调用限制与注意事项

> [!IMPORTANT]
>
> - 建议先调用 `API: Update Settings`，再调用 `API: Start`。
> - `API: Log` 仅在已启动记录后调用。
> - 应用退出前应调用 `API: Stop` 以确保文件正常关闭。

---

## 使用示例

```csm
API: Update Settings >> c:\_data -@ Logging
API: Start -@ Logging
API: Log >> MassData-Start:89012,Size:1156 -> Logging
API: Stop -@ Logging
```
