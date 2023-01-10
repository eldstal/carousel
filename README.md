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
