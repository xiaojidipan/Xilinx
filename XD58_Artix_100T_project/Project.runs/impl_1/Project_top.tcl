proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param tcl.collectionResultDisplayLimit 0
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xc7a100tfgg484-2L
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/XD58_test/XD58_Artix_100T_project/Project.cache/wt [current_project]
  set_property parent.project_path C:/XD58_test/XD58_Artix_100T_project/Project.xpr [current_project]
  set_property ip_repo_paths {
  e:/Xilinx/XD58_Project/My_ip_module
  C:/XD58_test/project_xd58/project_xd58.srcs
} [current_project]
  set_property ip_output_repo C:/XD58_test/XD58_Artix_100T_project/Project.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
  add_files -quiet C:/XD58_test/XD58_Artix_100T_project/Project.runs/synth_1/Project_top.dcp
  set_msg_config -source 4 -id {BD 41-1661} -suppress
  set_param project.isImplRun true
  add_files C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/bd/sub_BD/sub_BD.bd
  set_property is_locked true [get_files C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/bd/sub_BD/sub_BD.bd]
  read_ip -quiet C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/FIFO_time_code_ip/FIFO_time_code_ip.xci
  set_property is_locked true [get_files C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/FIFO_time_code_ip/FIFO_time_code_ip.xci]
  read_ip -quiet C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/FIFO_AD_ip/FIFO_AD_ip.xci
  set_property is_locked true [get_files C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/FIFO_AD_ip/FIFO_AD_ip.xci]
  read_ip -quiet C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/PLL_ip/PLL_ip.xci
  set_property is_locked true [get_files C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/PLL_ip/PLL_ip.xci]
  read_ip -quiet C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/vio_0/vio_0.xci
  set_property is_locked true [get_files C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/vio_0/vio_0.xci]
  read_ip -quiet C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/FIFO_wr_ddr3_ip/FIFO_wr_ddr3_ip.xci
  set_property is_locked true [get_files C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/FIFO_wr_ddr3_ip/FIFO_wr_ddr3_ip.xci]
  read_ip -quiet C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/isa_handle_0/isa_handle_0.xci
  set_property is_locked true [get_files C:/XD58_test/XD58_Artix_100T_project/Project.srcs/sources_1/ip/isa_handle_0/isa_handle_0.xci]
  set_param project.isImplRun false
  read_xdc C:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/Project_top.xdc
  read_xdc C:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/DDR3.xdc
  read_xdc C:/XD58_test/XD58_Artix_100T_project/Project.srcs/constrs_1/new/debug.xdc
  set_param project.isImplRun true
  link_design -top Project_top -part xc7a100tfgg484-2L
  set_param project.isImplRun false
  write_hwdef -force -file Project_top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force Project_top_opt.dcp
  catch { report_drc -file Project_top_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force Project_top_placed.dcp
  catch { report_io -file Project_top_io_placed.rpt }
  catch { report_utilization -file Project_top_utilization_placed.rpt -pb Project_top_utilization_placed.pb }
  catch { report_control_sets -verbose -file Project_top_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force Project_top_routed.dcp
  catch { report_drc -file Project_top_drc_routed.rpt -pb Project_top_drc_routed.pb -rpx Project_top_drc_routed.rpx }
  catch { report_methodology -file Project_top_methodology_drc_routed.rpt -rpx Project_top_methodology_drc_routed.rpx }
  catch { report_power -file Project_top_power_routed.rpt -pb Project_top_power_summary_routed.pb -rpx Project_top_power_routed.rpx }
  catch { report_route_status -file Project_top_route_status.rpt -pb Project_top_route_status.pb }
  catch { report_clock_utilization -file Project_top_clock_utilization_routed.rpt }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file Project_top_timing_summary_routed.rpt -rpx Project_top_timing_summary_routed.rpx }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force Project_top_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
  catch { write_mem_info -force Project_top.mmi }
  catch { write_bmm -force Project_top_bd.bmm }
  write_bitstream -force Project_top.bit 
  catch { write_sysdef -hwdef Project_top.hwdef -bitfile Project_top.bit -meminfo Project_top.mmi -file Project_top.sysdef }
  catch {write_debug_probes -no_partial_ltxfile -quiet -force debug_nets}
  catch {file copy -force debug_nets.ltx Project_top.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

