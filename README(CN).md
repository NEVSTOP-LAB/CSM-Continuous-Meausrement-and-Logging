# CSM Continuous Meausrement and Logging

基于 CSM 框架更简单、更直观，更优雅的实现连续测量和记录应用的示例。

### 依赖

    Communicable State Machine(CSM) >= 2023.10.27.161251
    CSM MassData Parameter Support >= 2023.10.27.231325

## 可复用的底层模块

### `Logging Module` : 将1D波形数据记录到TDMS文件中。

| API | 描述 | 参数 |
| --- | --- | --- |
| `API: Update Settings` | 配置API | 数据文件夹的完整路径 <br/> (类型: 普通字符串)|
| `API: Start` | 开始记录。在数据文件夹中创建基于时间的文件名的TDMS文件。 | N/A |
| `API: Log` | 将数据记录到TDMS文件中。 | 1D波形数组。 <br/> (类型: (Type: [MassData参数](https://github.com/NEVSTOP-LAB/CSM-MassData-Parameter-Support)) |
| `API: Stop` | 停止记录。 | N/A |

**示例：（假设模块名称为“Logging”）**
```
API: Update Settings >> c:\_data -> Logging
API: Log >> MassData-Start:89012,Size:1156 -> Logging
API: Start -> Logging
API: Stop -> Logging
```

### `Acquisition Module` : 生成正弦/方波模拟信号数据。

| API | 描述 | 参数 |
| --- | --- | --- |
| `API: Update Settings` | 配置API | Cluster:{HW(String),Signal Type(Enum)}  <br/> (类型: HexStr) |
| `API: Start` | 开始每200毫秒生成数据。 | N/A |
| `API: Stop` | Stop data generation. | N/A |


| Status | 描述 | 参数 |
| --- | --- | --- |
| Acquired Waveform | 模拟生成的数据  | 1D波形数组. <br/> (类型: [MassData参数](https://github.com/NEVSTOP-LAB/CSM-MassData-Parameter-Support)) |

**示例：（假设模块名称为“Acquisition”）**
```
API: Start -> Acquisition
API: Stop -> Acquisition
```

## 连续测量和记录应用程序

可以看出，"Logging Module" 和 "Acquisition Module" 设计完成时，完全不知道彼此的存在。为了创建连续测量和记录应用程序，除了需要一个用户界面模块。还需要调度这两个底层模块协同工作。为了简单，用户界面模块也作为 Controller，承担调度工作。

当需要使用真实硬件进行数据采集时，可以创建另一个 JKISM 模块，该模块具有相同的 API 和状态，然后将其替换掉 UI 模块中的 Acquisition Module。这将允许轻松地切换并集成不同的硬件模块，而不必更改 UI 模块的其余部分，因为它们遵循相同的 API 和状态接口。


### 用户界面模块

参考 [Workers Continuous Meausrement and Logging Example](https://www.vipm.io/package/sc_workers_framework_core/) 创建用户界面.

![Alt text](./_doc/mainUI.png)

使用 CSM 模板创建块图，将 "Logging Module" 和 "Acquisition Module" 作为子模块放置在VI后面板。

![mainBD](./_doc/MainBD.png)

#### 启动过程 (Macro: Initialize)

初始化数据和用户界面(UI)，从 XML 文件加载配置并将配置发送给子模块。将 'Acquisition' 模块的 'Acquired Waveform' 状态注册到 'UI' 模块的 'UI: Update Waveforms' 状态。当 'Acquired Waveform' 状态发生时，'UI' 将自动切换到 'UI: Update Waveforms' 状态。

```
Data: Initialize
Initialize Core Data
Events: Register
UI: Initialize
UI: Front Panel State >> Open
// Update Settings to submodules
Do: Update Settings
//Update status bar
DO: Update Status >> Ready...
```

![Macro: Initialize](./_doc/Initialize%20Process.png)

#### 退出过程 (Macro: Exit)

停止子模块和用户界面模块本身。

```
Macro: Exit -@ Acquisition
Macro: Exit -@ Logging
UI: Front Panel State >> Close
Data: Cleanup
Events: Unregister
Exits
```

#### 开始采集过程 (Macro: Start)

更新用户界面(UI)并触发子模块以启动消息进行工作。将 "Acquisition" 模块的 "Acquired Waveform" 状态注册到 "Logging" 模块的 "API: Log" 状态。当 "Acquired Waveform" 状态发生时，"Logging" 模块将自动执行 "API: Log"。

```
DO: Update Status >> Acquiring and Logging...
UI: Update When Start
API: Start ->| Logging
API: Start ->| Acquisition
```

![Macro: Start](./_doc/Start%20Process.png)


#### 停止采集过程 (Macro: Stop)

更新用户界面(UI)并停止子模块。取消注册 "Acquisition" 模块的 "Acquired Waveform" 状态。

```
DO: Update Status >> Stoping...
UI: Update When Stop
API: Stop ->| Logging
API: Stop ->| Acquisition
```

![Macro: Stop](./_doc/Stop%20Process.png)
