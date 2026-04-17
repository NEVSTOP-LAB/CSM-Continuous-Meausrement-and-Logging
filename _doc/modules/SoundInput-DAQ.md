# `SoundInput-DAQ` — CSM 模块接口文档

## 功能简述

`SoundInput-DAQ` 模块使用声卡作为采集硬件输入源，对外提供与 `Acquisition` 模块一致的启动/停止与数据广播接口。

---

## 模块信息

| 属性           | 值                                 |
| -------------- | ---------------------------------- |
| LabVIEW 版本   | ≥ 2017                             |
| 支持的操作系统 | Windows                            |
| 支持 RT        | ❌ 不支持                          |
| 支持 64-bit    | ✅ 支持                            |
| 所属模块组     | `SoundInput-DAQ.lvlib`             |

---

## 依赖项

| 依赖                                                                                                | 类型 |
| --------------------------------------------------------------------------------------------------- | ---- |
| [Communicable-State-Machine](https://github.com/NEVSTOP-LAB/Communicable-State-Machine)             | 必须 |
| [CSM-MassData-Parameter-Support](https://github.com/NEVSTOP-LAB/CSM-MassData-Parameter-Support)     | 必须 |

---

## API 接口（消息接口）

### `API: Start`

启动声卡采集。

- **参数**：N/A  
- **响应**：N/A

### `API: Stop`

停止声卡采集。

- **参数**：N/A  
- **响应**：N/A

---

## 状态广播接口

### `Acquired Waveform`

**默认广播类型**：`Status`

发布最新声卡波形数据，供 UI、算法、日志等模块订阅。

- **参数**：`MassData` — `Waveform[]`：一维波形数组

---

## 属性接口

设备与采样参数通过前面板控件配置，不提供固定的外部属性接口。

---

## 调用限制与注意事项

> [!IMPORTANT]
>
> - 该模块可作为 `Acquisition` 的硬件替换实现。
> - 对外接口保持一致时，UI 与下游模块通常无需改动。

---

## 使用示例

```csm
API: Start -@ SoundInput-DAQ
Acquired Waveform@SoundInput-DAQ >> API: Log@Logging -><register>
API: Stop -@ SoundInput-DAQ
```
