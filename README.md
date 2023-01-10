# carousel
A collaborative graphics demo playground


# How to play
1. Clone this repo
2. Create a directory in the root for your demo
3. Create a `Setup` script in your directory (install deps, build your demo, whatever else)
4. Create a `Boot` script in your directory (run the demo)
5. Commit and push to the `main` branch!
6. Your demo will run on the server, eventually

# Demo format
- Mandatory executable: `Boot`
  - Run to start your demo.
  - Started in your demo directory
  - Should open an X window and do something in it.
- Optional executable: `Setup`
  - Run after the repository has been fetched
  - Should run fast if all prerequisites are in place
- Optional text file: `Credits`
  - Contains an author name, if you want to display something other than the git history

# How to run
1. Fork this repo
2. Give your players commit access to the fork
3. Clone the repo onto a machine with Xorg and a screen/projector
4. Edit settings in `Server`
5. Run `Server`

For the best results, use a window manager that automatically full-screens new applications. You might also consider something like a simple tiling wm with a bar that advertises your repository so others can take part

# What it does
The Server will pull the repo periodically, and then cycle through each of the demo directories. Each demo, in turn, will run for a fixed amount of time (or until it finishes) before the next one is run.

The server will make a best effort to build demos before they run, to reduce the delay between demos.



# raspbian setup
Install raspbian 32-bit on a Raspberry Pi 4 (probably works fine with older ones, too)

```
sudo apt install python3 vim git build-essential i3 dmenu xdotool
sudo update-alternatives --install /usr/bin/x-session-manager x-session-manager /usr/bin/i3 95
sudo update-alternatives --set x-session-manager /usr/bin/i3
git clone https://github.com/eldstal/carousel.git ~/carousel
```

Set the following in `~/.config/i3/config/`:

```

font pango:monospace 14

# Carousel settings
workspace_layout tabbed
title_align center

# Hide window decorations on workspace 1
hide_edge_borders smart
for_window [workspace="1"] border pixel 1

exec --no-startup-id xset -dpms
exec --no-startup-id xset s off
exec --no-startup-id xdotool mousemove --sync 9999 9999



bar {
    status_command ~/carousel/current

    colors {
      background #000000
      statusline #C1A23D
      separator  #666666

      focused_workspace  #88732B #C1A23D #000000
      active_workspace   #333333 #222222 #FFFFFF
      inactive_workspace #333333 #222222 #888888
      urgent_workspace   #2F343A #900000 #FFFFFF
      binding_mode       #2F343A #900000 #FFFFFF
    }
}


```
