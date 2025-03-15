<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Reusable Modules" Type="Folder">
			<Item Name="Acquisition.lvlib" Type="Library" URL="../Acquisition/Acquisition.lvlib"/>
			<Item Name="Logging.lvlib" Type="Library" URL="../Logging/Logging.lvlib"/>
			<Item Name="Algorithm.lvlib" Type="Library" URL="../Algorithm/Algorithm.lvlib"/>
		</Item>
		<Item Name="UI.lvlib" Type="Library" URL="../UI/UI.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="subSigGeneratorBlock.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/subSigGeneratorBlock.vi"/>
				<Item Name="Nearest Frequency for Block.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalConfig.llb/Nearest Frequency for Block.vi"/>
				<Item Name="Nearest Freq in Int Cycles.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalConfig.llb/Nearest Freq in Int Cycles.vi"/>
				<Item Name="subInternalTiming.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/subInternalTiming.vi"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="subShouldUseDefSigName.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/subShouldUseDefSigName.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="sub2ShouldUseDefSigName.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/sub2ShouldUseDefSigName.vi"/>
				<Item Name="subGetSignalName.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/subGetSignalName.vi"/>
				<Item Name="ex_GenAddAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/SimulateSignalBlock.llb/ex_GenAddAttribs.vi"/>
				<Item Name="ex_WaveformAttribsPlus.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribsPlus.ctl"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="ex_SetExpAttribsAndT0.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_SetExpAttribsAndT0.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="Timestamp Add.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Add.vi"/>
				<Item Name="DU64_U32AddWithOverflow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32AddWithOverflow.vi"/>
				<Item Name="ex_SetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_SetAllExpressAttribs.vi"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Add State(s) to Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Build State String with Arguments__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Build State String with Arguments__JKI_lib_State_Machine.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="exnSpectralBlock spectral measurements peak poly.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements peak poly.vi"/>
				<Item Name="exnSpectralBlock spectral measurements peak array WFM (CDB).vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements peak array WFM (CDB).vi"/>
				<Item Name="exnSpectralBlock clear array phases.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock clear array phases.vi"/>
				<Item Name="exnSpectralBlock clear array magnitudes.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock clear array magnitudes.vi"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="exnSpectralBlock spectral measurements peak array WFM.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements peak array WFM.vi"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="exnSpectralBlock spectral measurements peak DDT.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements peak DDT.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="exnSpectralBlock mod exp dyn x attribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock mod exp dyn x attribs.vi"/>
				<Item Name="exnSpectralBlock clear DDT y array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock clear DDT y array.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="exnSpectralBlock spectral measurements peak WFM (CDB).vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements peak WFM (CDB).vi"/>
				<Item Name="exnSpectralBlock clear phase.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock clear phase.vi"/>
				<Item Name="exnSpectralBlock clear magnitude.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock clear magnitude.vi"/>
				<Item Name="exnSpectralBlock spectral measurements peak WFM.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements peak WFM.vi"/>
				<Item Name="exnSpectralBlock spectral measurements RMS poly.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements RMS poly.vi"/>
				<Item Name="exnSpectralBlock spectral measurements RMS array WFM (CDB).vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements RMS array WFM (CDB).vi"/>
				<Item Name="exnSpectralBlock spectral measurements RMS array WFM.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements RMS array WFM.vi"/>
				<Item Name="exnSpectralBlock spectral measurements RMS DDT.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements RMS DDT.vi"/>
				<Item Name="exnSpectralBlock spectral measurements RMS WFM (CDB).vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements RMS WFM (CDB).vi"/>
				<Item Name="exnSpectralBlock spectral measurements RMS WFM.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements RMS WFM.vi"/>
				<Item Name="exnSpectralBlock spectral measurements power poly.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements power poly.vi"/>
				<Item Name="exnSpectralBlock spectral measurements power WFM.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements power WFM.vi"/>
				<Item Name="exnSpectralBlock spectral measurements power WFM (CDB).vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements power WFM (CDB).vi"/>
				<Item Name="exnSpectralBlock spectral measurements power array WFM.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements power array WFM.vi"/>
				<Item Name="exnSpectralBlock spectral measurements power array WFM (CDB).vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements power array WFM (CDB).vi"/>
				<Item Name="exnSpectralBlock spectral measurements power DDT.vi" Type="VI" URL="/&lt;vilib&gt;/express/express analysis/Spectral/Block/exnSpectralBlock spectral measurements power DDT.vi"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="CSM - Convert Data to HexStr.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Convert Data to HexStr.vi"/>
				<Item Name="CSM - Convert Argument to Error.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Convert Argument to Error.vi"/>
				<Item Name="CSM - Convert Error to Argument.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Convert Error to Argument.vi"/>
				<Item Name="CSM - Broadcast Status Change.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Broadcast Status Change.vi"/>
				<Item Name="Convert API String Arguments to Data.vim" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/Convert API String Arguments to Data.vim"/>
				<Item Name="Convert API String Arguments to Data(variant).vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/_Support/Convert API String Arguments to Data(variant).vi"/>
				<Item Name="Query Data as API String Arguments.vim" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/Query Data as API String Arguments.vim"/>
				<Item Name="Query Data as API String Arguments(variant).vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/_Support/Query Data as API String Arguments(variant).vi"/>
				<Item Name="Data To API String Arguments.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/_Support/Data To API String Arguments.vi"/>
				<Item Name="Data To SingleElementsArray_with_itself_csm.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/_Support/Data To SingleElementsArray_with_itself_csm.vi"/>
				<Item Name="CSM - Convert MassData to Argument.vim" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/MassData-Parameter/CSM - Convert MassData to Argument.vim"/>
				<Item Name="Operation-FGV-MassData.ctl" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/MassData-Parameter/_support/Operation-FGV-MassData.ctl"/>
				<Item Name="FGV-MassData.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/MassData-Parameter/_support/FGV-MassData.vi"/>
				<Item Name="CSM - Convert HexStr to Data.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Convert HexStr to Data.vi"/>
				<Item Name="CSM - Revert Arguments-Safe String.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Revert Arguments-Safe String.vi"/>
				<Item Name="Trim Single line Text.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/_Support/Common/Trim Single line Text.vi"/>
				<Item Name="CSM - Make String Arguments Safe.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Make String Arguments Safe.vi"/>
				<Item Name="CSM - Break Down Multiple States String.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Break Down Multiple States String.vi"/>
				<Item Name="CSM - Compact Multiple States.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Compact Multiple States.vi"/>
				<Item Name="CSM - Keywords.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Keywords.vi"/>
				<Item Name="Parse State Queue++.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/Parse State Queue++.vi"/>
				<Item Name="CSM - Internal State Debug Log History.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Internal State Debug Log History.vi"/>
				<Item Name="CSM - Convert Argument to MassData.vim" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/MassData-Parameter/CSM - Convert Argument to MassData.vim"/>
				<Item Name="CSM - Mark As Worker Module.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Mark As Worker Module.vi"/>
				<Item Name="Timeout Selector.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/Utility/Timeout Selector.vi"/>
				<Item Name="CSM - Read Configuration Variable.vim" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/CSM - Read Configuration Variable.vim"/>
				<Item Name="_fgv-oper.ctl" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/_Support/_fgv-oper.ctl"/>
				<Item Name="Convert Data To API String Arguments.vim" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/Convert Data To API String Arguments.vim"/>
				<Item Name="SingleElementsArray To Data_csm.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/_Support/SingleElementsArray To Data_csm.vi"/>
				<Item Name="INI-FGV.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/_Support/INI-FGV.vi"/>
				<Item Name="Parse Used Session and Name.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/_Support/Parse Used Session and Name.vi"/>
				<Item Name="Data To SingleElementsArray_csm.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/_Support/Data To SingleElementsArray_csm.vi"/>
				<Item Name="global-csm-ini-db-change-flag.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/_Support/global-csm-ini-db-change-flag.vi"/>
				<Item Name="CSM - Write Configuration Variable.vim" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/CSM - Write Configuration Variable.vim"/>
				<Item Name="CSM - Get New State Notifier Event.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Get New State Notifier Event.vi"/>
				<Item Name="Add State(s) to Queue By BOOL++.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/Add State(s) to Queue By BOOL++.vi"/>
				<Item Name="Add State(s) to Queue By BOOL(Element).vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/_Polymophic/Add State(s) to Queue By BOOL(Element).vi"/>
				<Item Name="CSM - Read File Logger Configuration from INI String.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/_Support/CSM - Read File Logger Configuration from INI String.vi"/>
				<Item Name="_CSM - Read File Logger Configuration - v1.0.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/_Support/instances/_CSM - Read File Logger Configuration - v1.0.vi"/>
				<Item Name="CSM - Start File Logger.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/Logger/CSM - Start File Logger.vi"/>
				<Item Name="CSM - Start Watchdog to Ensure All Modules Exit.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/Watchdog/CSM - Start Watchdog to Ensure All Modules Exit.vi"/>
				<Item Name="CSM - Config MassData Parameter Cache Size.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/MassData-Parameter/CSM - Config MassData Parameter Cache Size.vi"/>
				<Item Name="CSM - Sync Configuration Variables to File.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/CSM - Sync Configuration Variables to File.vi"/>
				<Item Name="CSM - Populate Configuration Variables.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/INI-Static-Variable-Support/CSM - Populate Configuration Variables.vi"/>
				<Item Name="CSM - Build Exit Messages of CSMs.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Build Exit Messages of CSMs.vi"/>
				<Item Name="Build Message with Arguments++.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/Build Message with Arguments++.vi"/>
				<Item Name="CSM - Replace Substitution Marks in Messages.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Replace Substitution Marks in Messages.vi"/>
				<Item Name="Build No-Reply Asynchronous Message with Arguments.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/_Polymophic/Build No-Reply Asynchronous Message with Arguments.vi"/>
				<Item Name="CSM - Module Status.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/AdvanceAPI/CSM - Module Status.vi"/>
				<Item Name="Build Synchronous Message with Arguments.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/_Polymophic/Build Synchronous Message with Arguments.vi"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
