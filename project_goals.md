### Project Goals

I want to implement, with the Perl language, a *complete* user interface for the Debian package system, including auxiliary functions present in tools like `apt-file`.

1. Flags must be **properly** parsed.
	* For instance, `--sync` and `-S` have the same meanings, and `-yS` and `-Sy` and `-S -y` must all be the same thing.
	* In addition, package name must be givable at any point in the command list. This is the same behavior `pacman` has.

2. Must be compatible with advanced usages. 
	* For instance, `pacman -Qs test` will search the local (installed) package list for packages with `test` in their names or their descriptions. 
	* Using `pacman -Qsq test` we can get a list of such packages *without any descriptions* and then, say, pass that to pacman for packages to remove, with `pacman -Rs $(pacman -Qsq)` (assuming a POSIX shell).
	* To get full functionality for advanced users, all sub-flags must be compatible. Each function should be implemented on
3. This interface must be as fast as possible so that it can be feasibly used on extremely minimal systems, and should make as few assumptions as possible about available system utilities.
	* Ideally, it should function just as well on a barebones Raspberry Pi Nano as it does on a desktop computer.
	* Heavier languages like Python are of course excluded, and the program should wherever possible use minimal backends like `apt-get` and `apt-cache` instead of `apt`.
	
3. Everywhere that it is possible to be modular, we should strive for it.
	*  An abstraction layer seperating the actual backend program calls from the frontend must be established, to make the code both maximially extensible and easy to troubleshoot.
	* In the long term, we could implement multiple back-ends for other tools (for instance, Red Hat's package system), whilst presenting the same interface with the same workflow advantages.

4. Workflow cues like colored fonts and progress bars should be implemented.
	* This is not an immediate requirement -- but it should be a long-term goal and we should make space for it.
