# ems-bottle-light

3d printed parts for a single AA cell LED lamp that slides into a bottle neck

## Source files

- `cell_sizes.scad`
  - Some constants for the AA battery cell dimensions
- `insert_cell_holder.scad`
  - The main tube shape that forms the battery holder
- `insert_end.scad`
  - The bottom end of the holder. Holds the spring contact and the boost module PCB
- `insert_shapes.scad`
  - Library file with each of the shapes
- `insert_threaded_top.scad`
  - The top end of the holder. Is threaded to fit a 13mm / 1mm pitch thread on the threaded switch barrel we're using
- `rcolyer-threads.scad`
  - Library with the thread implementation, from https://github.com/rcolyer/threads-scad/
- `switch_socket_wrench.scad`
  - A socket wrench used to help tighten the switch onto the threaded end. Relies on you cutting small notches at opposite sides in the collar of the switch 

 