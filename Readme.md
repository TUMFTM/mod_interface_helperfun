# Autonomous Driving Control Software of TUM Roborace Team
### Overview
This software stack has been developed and used for the Roborace Event at the Berlin Formula-E Track 2018. It achieved approximately 150kph and 80% of the combined lateral and longitudinal acceleration potential of the DevBot. The overall research project is a joint effort of the Chair of Automotive Technology and the Chair of Automatic Control.

This software component covers the trajectory tracking, state estimation and vehicle dynamics control aspects of the stack. It takes trajectories from the planner as the main input and delivers appropriate steering, powertrain and brake commands. Furthermore, it handles vehicle startup and emergency brake situations.

To get started, take a look at the `veh_passenger` repository and follow the tutorial for the example vehicle.

# Modules - Interface & Helperfunctions
This repository contains several functionality which can be reused throughout the whole project.

# List of components
* `SimulinkLibrary`: Contains very general library functions, like basic conversions and general data processing scripts. Further, all intercomponent bus definitions are here. Contact person: [Alexander Wischnewski](mailto:alexander.wischnewski@tum.de).  
