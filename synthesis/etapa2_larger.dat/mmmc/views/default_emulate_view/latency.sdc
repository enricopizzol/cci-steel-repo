set_clock_latency -source -early -max -rise  -0.333981 [get_ports {clock}] -clock clock 
set_clock_latency -source -early -max -fall  -0.347226 [get_ports {clock}] -clock clock 
set_clock_latency -source -late -max -rise  -0.333981 [get_ports {clock}] -clock clock 
set_clock_latency -source -late -max -fall  -0.347226 [get_ports {clock}] -clock clock 
