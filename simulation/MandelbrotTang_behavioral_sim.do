#
# Create work library
#
vlib work
#
# Compile sources
#
vlog  C:/Users/akita/Documents/GitHub/MandelbrotTang/mandel.v
vlog  C:/Users/akita/Documents/GitHub/MandelbrotTang/al_ip/pll.v
vlog  C:/Users/akita/Documents/GitHub/MandelbrotTang/video.v
vlog  C:/Users/akita/Documents/GitHub/MandelbrotTang/al_ip/vram.v
vlog  C:/Users/akita/Documents/GitHub/MandelbrotTang/uart.v
vlog  C:/Users/akita/Documents/GitHub/MandelbrotTang/mandel_tb.v
#
# Call vsim to invoke simulator
#
vsim -L  -gui -novopt work.manel_tb
#
# Add waves
#
add wave *
#
# Run simulation
#
run 1000ns
#
# End