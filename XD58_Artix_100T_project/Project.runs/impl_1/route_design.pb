
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2#
xc7a100t-fgg4842default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2#
xc7a100t-fgg4842default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
w
Command: %s
53*	vivadotcl2F
2report_drc (run_mandatory_drcs) for: router_checks2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2�
 "�
Xsub_BD_inst/sub_BD_i/axi_ethernetlite_0/U0/NO_LOOPBACK_GEN.INCLUDE_BUFG_GEN.RX_IBUF_INST	Xsub_BD_inst/sub_BD_i/axi_ethernetlite_0/U0/NO_LOOPBACK_GEN.INCLUDE_BUFG_GEN.RX_IBUF_INST2default:default2default:default2@
 "*
	IOB_X0Y45
	IOB_X0Y452default:default2default:default2�
 "�
Ysub_BD_inst/sub_BD_i/axi_ethernetlite_0/U0/NO_LOOPBACK_GEN.INCLUDE_BUFG_GEN.CLOCK_BUFG_RX	Ysub_BD_inst/sub_BD_i/axi_ethernetlite_0/U0/NO_LOOPBACK_GEN.INCLUDE_BUFG_GEN.CLOCK_BUFG_RX2default:default2default:default2H
 "2
BUFGCTRL_X0Y2
BUFGCTRL_X0Y22default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px� 
�
�Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2�
 "�
Xsub_BD_inst/sub_BD_i/axi_ethernetlite_0/U0/NO_LOOPBACK_GEN.INCLUDE_BUFG_GEN.TX_IBUF_INST	Xsub_BD_inst/sub_BD_i/axi_ethernetlite_0/U0/NO_LOOPBACK_GEN.INCLUDE_BUFG_GEN.TX_IBUF_INST2default:default2default:default2@
 "*
	IOB_X0Y35
	IOB_X0Y352default:default2default:default2�
 "�
Ysub_BD_inst/sub_BD_i/axi_ethernetlite_0/U0/NO_LOOPBACK_GEN.INCLUDE_BUFG_GEN.CLOCK_BUFG_TX	Ysub_BD_inst/sub_BD_i/axi_ethernetlite_0/U0/NO_LOOPBACK_GEN.INCLUDE_BUFG_GEN.CLOCK_BUFG_TX2default:default2default:default2H
 "2
BUFGCTRL_X0Y1
BUFGCTRL_X0Y12default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px� 
q
%s completed successfully
29*	vivadotcl23
report_drc (run_mandatory_drcs)2default:defaultZ4-42h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: 40135023
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:30 ; elapsed = 00:00:21 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
A
,Phase 2.1 Create Timer | Checksum: 40135023
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:23 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 40135023
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:23 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 40135023
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:23 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
B
-Phase 2.4 Update Timing | Checksum: fe1331e9
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:51 ; elapsed = 00:00:35 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=1.251  | TNS=0.000  | WHS=-0.438 | THS=-2819.663|
2default:defaultZ35-416h px� 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 2.5.1 Update Timing | Checksum: fbfad41e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:04 ; elapsed = 00:00:43 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.251  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 1a72a9ce6
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:04 ; elapsed = 00:00:43 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
I
4Phase 2 Router Initialization | Checksum: 13675d468
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:04 ; elapsed = 00:00:43 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 1ad888683
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:14 ; elapsed = 00:00:48 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.923  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 270080094
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:36 ; elapsed = 00:01:00 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 270080094
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:36 ; elapsed = 00:01:00 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 21a9b148a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:39 ; elapsed = 00:01:02 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.923  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 20f4683ca
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:39 ; elapsed = 00:01:02 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 20f4683ca
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:39 ; elapsed = 00:01:02 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 20f4683ca
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:39 ; elapsed = 00:01:02 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 282d23c9e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:42 ; elapsed = 00:01:04 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.923  | TNS=0.000  | WHS=0.031  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 250df627c
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:42 ; elapsed = 00:01:04 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 250df627c
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:43 ; elapsed = 00:01:04 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 22605d32b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:43 ; elapsed = 00:01:05 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 22605d32b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:43 ; elapsed = 00:01:05 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 147d155b9
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:46 ; elapsed = 00:01:08 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.923  | TNS=0.000  | WHS=0.031  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 10 Post Router Timing | Checksum: 147d155b9
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:46 ; elapsed = 00:01:08 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:46 ; elapsed = 00:01:08 . Memory (MB): peak = 2235.219 ; gain = 0.0002default:defaulth px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1852default:default2
812default:default2
152default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:542default:default2
00:01:122default:default2
2235.2192default:default2
0.0002default:defaultZ17-268h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:162default:default2
00:00:062default:default2
2235.2192default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2c
OC:/XD58_test/XD58_Artix_100T_project/Project.runs/impl_1/Project_top_routed.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:232default:default2
00:00:102default:default2
2235.2192default:default2
0.0002default:defaultZ17-268h px� 
�
Command: %s
53*	vivadotcl2}
ireport_drc -file Project_top_drc_routed.rpt -pb Project_top_drc_routed.pb -rpx Project_top_drc_routed.rpx2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
SC:/XD58_test/XD58_Artix_100T_project/Project.runs/impl_1/Project_top_drc_routed.rptSC:/XD58_test/XD58_Artix_100T_project/Project.runs/impl_1/Project_top_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:172default:default2
00:00:092default:default2
2235.2192default:default2
0.0002default:defaultZ17-268h px� 
�
Command: %s
53*	vivadotcl2
kreport_methodology -file Project_top_methodology_drc_routed.rpt -rpx Project_top_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
692default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
702default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
712default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
722default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
742default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
752default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
762default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
772default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
782default:default8@Z18-632h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
_C:/XD58_test/XD58_Artix_100T_project/Project.runs/impl_1/Project_top_methodology_drc_routed.rpt_C:/XD58_test/XD58_Artix_100T_project/Project.runs/impl_1/Project_top_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:372default:default2
00:00:202default:default2
2360.7342default:default2
125.5162default:defaultZ17-268h px� 
�
Command: %s
53*	vivadotcl2�
yreport_power -file Project_top_power_routed.rpt -pb Project_top_power_summary_routed.pb -rpx Project_top_power_routed.rpx2default:defaultZ4-113h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
692default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
702default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
712default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
722default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
742default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
752default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
762default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
772default:default8@Z18-632h px� 
�
J%s: No clock object specified, the clocks will be automatically identified581*constraints2#
set_input_delay2default:default2e
OC:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc2default:default2
782default:default8@Z18-632h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
KInvalid Voltage Source %s for the family %s. Ignoring the voltage setting.
266*designutils2
VCCINTIO2default:default2
artix72default:defaultZ20-266h px� 
�
KInvalid Voltage Source %s for the family %s. Ignoring the voltage setting.
266*designutils2
VCCINTIO2default:default2
artix72default:defaultZ20-266h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2102default:default2
842default:default2
152default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:202default:default2
00:00:112default:default2
2452.5982default:default2
91.8632default:defaultZ17-268h px� 
s
UpdateTimingParams:%s.
91*timing2:
& Speed grade: -2L, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px� 


End Record