# `Algorithm` — CSM 模块接口文档

## 功能简述

`Algorithm` 模块接收采集波形并执行频域分析，将分析结果回传给 UI 等订阅方。

---

## 模块信息

| 属性           | 值                                 |
| -------------- | ---------------------------------- |
| LabVIEW 版本   | ≥ 2017                             |
| 支持的操作系统 | Windows                            |
| 支持 RT        | ❌ 不支持                          |
| 支持 64-bit    | ✅ 支持                            |
| 所属模块组     | `Algorithm.lvlib`                  |

---

## 依赖项

| 依赖                                                                                                | 类型 |
| --------------------------------------------------------------------------------------------------- | ---- |
| [Communicable-State-Machine](https://github.com/NEVSTOP-LAB/Communicable-State-Machine)             | 必须 |
| [CSM-MassData-Parameter-Support](https://github.com/NEVSTOP-LAB/CSM-MassData-Parameter-Support)     | 必须 |

---

## API 接口（消息接口）

### `API: FFT(Peak)`

使用 FFT(Peak) 方法分析波形。

- **参数**：`MassData` — `Waveform[]`：一维波形数组  
- **响应**：`MassData` — `Cluster(Waveform)[]`

### `API: FFT(RMS)`

使用 FFT(RMS) 方法分析波形。

- **参数**：`MassData` — `Waveform[]`：一维波形数组  
- **响应**：`MassData` — `Cluster(Waveform)[]`

### `API: Power Spectrum`

计算波形功率谱。

- **参数**：`MassData` — `Waveform[]`：一维波形数组  
- **响应**：`MassData` — `Cluster(Waveform)[]`

---

## 状态广播接口

算法结果通常由调用链路直接转发到 UI 更新逻辑，具体广播名称可由应用层约定。

---

## 属性接口

无公开属性接口。

---

## 调用限制与注意事项

> [!IMPORTANT]
>
> - 输入应为有效波形数组。
> - 建议由采集状态触发算法 API，以保证时序一致性。

---

## 使用示例

```csm
Acquired Waveform@Acquisition >> API: FFT(RMS)@Algorithm -><register>
Acquired Waveform@Acquisition >> API: Power Spectrum@Algorithm -><register>
```
