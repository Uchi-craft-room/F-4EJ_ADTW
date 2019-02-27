# =====
# Dragchutes
# =====

props.globals.getNode("sim/model/dragchute/position-norm",0).setDoubleValue(0.0);
props.globals.getNode("sim/model/dragchute/force", 0).setDoubleValue(0.0);
setlistener("sim/model/dragchute/enable",func{interpolate("sim/model/dragchute/position-norm",getprop("sim/model/dragchute/enable"),2)});
setlistener("sim/model/lights/sbc1/state",func{interpolate("sim/model/dragchute/force",getprop("sim/model/dragchute/position-norm")*getprop("velocities/mach")*10,0.1)});
