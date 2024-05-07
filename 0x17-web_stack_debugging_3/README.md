## Web stack debugging #3

This was the fourth in a series of web stack debugging projects. In these projects, I was given broken/bugged web stacks in isolated containers and tasked with fixing them to a working state. For each task, I wrote a script automating the commands necessary to fix the web stack.

### Tasks 📃

0. Strace is your friend
   - `0-strace_is_your_friend.pp`: This Puppet manifest fixes a typo error causing a WordPress application served by an Apache web server to fail.
   - **Usage**: `puppet apply 0-strace_is_your_friend.pp`

