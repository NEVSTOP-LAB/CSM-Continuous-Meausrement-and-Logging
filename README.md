# JKISM++ vs Workers 

Envrionments:
- LabVIEW 2020 
- JKISM++:    
  - https://github.com/NEVSTOP-LAB/JKI-State-Machine-Plus-Plus
  - https://github.com/NEVSTOP-LAB/JKISMPP-MassData-Parameter-Support
- Workers:
  - https://www.vipm.io/package/sc_workers_framework_core/?utm_source=vipm_desktop

### Both UI looks like:  
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/0f9f7452-f85c-4cf6-a5e2-45f4941a8b09)


### MainUI JKISM++ vs Workers:  

![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/ce7914a3-195b-4e2d-bc90-5811a9971ded)
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/b627b7dd-68c0-4a41-9706-1a57c9fd6640)

### Start Message JKISM++ vs Workers:  

![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/08d704e0-3283-4651-9b46-6f504dad8c18)
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/a7289a2e-bd4a-46da-b42c-f68d21bc8a19)

### Data Message JKISM++ vs Workers:  

Queue needed for Workers    
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/c0c21782-4077-40a5-8552-cd68bd421b37)

Pack Waveform as arguments and publish status without considering who need it      
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/3c9acc28-4997-48cf-aa99-c5d8c1a87e76)

### Directly shared Dependency vs Status Subscription mechanism

Queue Ref shared by UI & Aquisition & Logging Module      
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/5f10749b-b90f-4718-9eb2-05b13d578932)

"Acquired Waveform" status of Aquisition Module is registered by UI & Logging Module. UI Reacts with "UI: Update Waveforms". Logging reacts with “API: Log”        
![image](https://github.com/NEVSTOP-LAB/JKISMPP-Continuous-Meausrement-and-Logging/assets/8196752/ef7ae01a-c5e6-4a15-bd30-37ecbdd4ab0b)

