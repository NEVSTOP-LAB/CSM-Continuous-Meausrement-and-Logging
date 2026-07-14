# JKISM++ vs Workers 

## Environment
- LabVIEW 2020 
- JKISM++:    
  - https://github.com/NEVSTOP-LAB/JKI-State-Machine-Plus-Plus
  - https://github.com/NEVSTOP-LAB/JKISMPP-MassData-Parameter-Support
- Workers:
  - https://www.vipm.io/package/sc_workers_framework_core/?utm_source=vipm_desktop

### UI Comparison
Both UI interfaces look similar:
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/0f9f7452-f85c-4cf6-a5e2-45f4941a8b09)


### Main UI Block Diagram Comparison
JKISM++ vs Workers:

![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/ce7914a3-195b-4e2d-bc90-5811a9971ded)
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/b627b7dd-68c0-4a41-9706-1a57c9fd6640)

### Start Message Comparison
JKISM++ vs Workers:

![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/08d704e0-3283-4651-9b46-6f504dad8c18)
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/a7289a2e-bd4a-46da-b42c-f68d21bc8a19)

### Data Message Comparison
JKISM++ vs Workers:

Workers requires a dedicated queue:
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/c0c21782-4077-40a5-8552-cd68bd421b37)

JKISM++ packs waveform as arguments and publishes status without needing to know who will consume it:
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/3c9acc28-4997-48cf-aa99-c5d8c1a87e76)

### Directly Shared Dependency vs Status Subscription Mechanism

Workers: Queue reference directly shared by UI, Acquisition, and Logging Module
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/5f10749b-b90f-4718-9eb2-05b13d578932)

JKISM++: "Acquired Waveform" status of Acquisition Module is registered by both UI and Logging Modules. The UI reacts by calling "UI: Update Waveforms", while Logging reacts by calling "API: Log":
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/ef7ae01a-c5e6-4a15-bd30-37ecbdd4ab0b)

