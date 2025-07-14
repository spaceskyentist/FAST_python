import pyspedas
import pytplot
from pytplot import tplot, get_data
import matplotlib as plt
from mpl_toolkits.mplot3d import Axes3D

# Load FAST orbit data for a short time range
pyspedas.projects.fast.orbit(trange=['1998-09-25/00:00', '1998-09-25/03:00'])

# Grab position vectors
x, y, z = [ get_data(var)[1] for var in
           ['fast_orbit_pos_x', 'fast_orbit_pos_y', 'fast_orbit_pos_z']]

# Plot the orbit in 3D
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.plot(x,y,z)
ax.set_title('FAST Orbit - sample segment')
plt.show()
