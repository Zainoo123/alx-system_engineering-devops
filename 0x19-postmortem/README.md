# Postmortem Report

## Incident Overview

During the release of ALX's System Engineering & DevOps project 0x19, at approximately 06:00 West African Time (WAT) in Morocco, an outage occurred on an isolated Ubuntu 14.04 container running an Apache web server. Users attempting to access the server via GET requests encountered `500 Internal Server Error` responses instead of the expected HTML file defining a simple Holberton WordPress site.

## Debugging Process

BDB (Bug Debugger Brennan) encountered the issue at approximately 19:20 PST and commenced the debugging process:

1. Conducted process check using `ps aux`, confirming the proper execution of two `apache2` processes: `root` and `www-data`.
2. Explored the `/etc/apache2/sites-available` directory to determine the server's content location at `/var/www/html/`.
3. Utilized `strace` on both `root` and `www-data` Apache processes, identifying an `-1 ENOENT (No such file or directory)` error upon accessing `/var/www/html/wp-includes/class-wp-locale.phpp`.
4. Inspected files within `/var/www/html/`, locating the erroneous `.phpp` file extension in `wp-settings.php` (Line 137).
5. Rectified the typo by removing the trailing `p`.
6. Successfully tested server response with another `curl` operation.
7. Developed a Puppet manifest (`0-strace_is_your_friend.pp`) to automate error correction.

## Summary

The incident stemmed from a simple typo, leading to a critical error in `wp-settings.php` when attempting to load the file `class-wp-locale.phpp` instead of `class-wp-locale.php`. Rectification involved manually removing the erroneous `p` from the file path, restoring the correct functionality of the WordPress application.

## Prevention Measures

To avert future outages:

- **Testing:** Implement rigorous testing protocols to identify and address errors before deployment.
- **Monitoring:** Employ uptime-monitoring services like [UptimeRobot](https://uptimerobot.com/) to promptly detect website outages.

Additionally, a Puppet manifest was created to automate the correction of similar errors, replacing any `phpp` extensions in `wp-settings.php` with `php`. While we strive for perfection, it's important to acknowledge that even programmers make mistakes – but it's our commitment to learning and improving that ensures the mitigation of future incidents.

This postmortem report is intended to facilitate transparency, learning, and continuous improvement within our project development processes.
