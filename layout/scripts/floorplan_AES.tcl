###########################
## Innovus 18.1 Floorplan Script
###########################


# Step 1: adjust the core size for the layout. Floorplan -> Specify Floorplan
#     use whatever W/H ration you would like, but set the Core Utilization to 0.25
#     Add margins of 15um to all sides of the core

# Step 2: add power rings to the design. Power -> Power Planning -> Add Ring
#     for nets, select VDD and GND
#     for configuration, place the rings on metal 4/5 depending on the orientation of the route (metal 5 is horizonatal, metal 4 is vertical)
#     set the width to 5um

# Step 3: add a vertical power stripe to the center of the design. Power -> Power Planning -> add Stripe
#     for nets, select VDD and GND
#     The stripe should be vertical and on layer 4
#     Set width to 5
#     Adjust the First/Last Strip values to the stripe is in the center of the core 

# Step 4: route power from the rings/stripes to the standard cell rows
#      Route -> Special Route
#      Nets are VDD and GND
#      Under Via Generation tab, select Make Via Connections to Core Ring and Stripe
#      Once you do sroute, zoom in on layout and make sure the vias were added

# Step 5: Place the pins
#      Edit -> Pin Editor
#      Select all the pine from the list in the lower left
#      Set pin later to M2, and Width/Depth to 0.5
#      For location, set "Spread" and then on the top of window, the Side/Edge field should become valid. Set value to "Top"
#      For Position, select a starting X point to 20um so the pins start to the right of the power rings


setEndCapMode \
    -cells NWSX \
    -leftEdge NWSX \
    -rightEdge NWSX

addEndCap -prefix ENDCAP

#deleteFiller -prefix ENDCAP

addWellTap \
    -cell NWSX \
    -prefix WELLTAP \
    -cellInterval 30.0 \
    -skipRow 1 \
    -inRowOffset 15

addWellTap \
    -cell NWSX \
    -prefix WELLTAP \
    -cellInterval 30.0 \
    -skipRow 1 \
    -startRowNum 2 \
    -inRowOffset 30.0

#deleteFiller -prefix WELLTAP

saveFPlan ../floorplan/${DESIGN}_floorplan.fp
#loadFPlan ../floorplan/${DESIGN}_floorplan.fp
