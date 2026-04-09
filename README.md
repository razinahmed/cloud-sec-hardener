# Cloud Sec Hardener

![Security](https://img.shields.io/badge/Security-Tool-red)
![Bash](https://img.shields.io/badge/Bash-Script-green)
![License](https://img.shields.io/badge/License-MIT-blue)

A Bash-based cloud security hardening toolkit that automates server configuration to enforce security best practices. Designed for Linux-based cloud instances across AWS, GCP, and Azure.

## Description

Cloud Sec Hardener provides automated scripts to lock down cloud server configurations. It disables root login, enforces SSH key-based authentication, and applies system-level security patches to reduce the attack surface of your cloud infrastructure.

## Features

- Disable root login via SSH configuration hardening
- Enforce SSH key-based authentication over password auth
- Automated system package updates and security patching
- Configurable hardening profiles for different cloud providers
- Idempotent execution -- safe to run multiple times
- Makefile-based build and test workflow

## Tech Stack

- **Language:** Bash
- **Target OS:** Ubuntu / Debian-based Linux
- **Configuration:** SSH daemon (`sshd_config`)
- **Build Tool:** GNU Make

## Quick Start

```bash
# Clone the repository
git clone https://github.com/razinahmed/cloud-sec-hardener.git
cd cloud-sec-hardener

# Review the hardening script before running
cat scripts/harden.sh

# Run the hardening script (requires root privileges)
sudo bash scripts/harden.sh

# Restart SSH daemon to apply changes
sudo systemctl restart sshd
```

## Usage

```bash
# Build and test
make build
make test

# Run hardening directly
sudo bash scripts/harden.sh
```

## Project Structure

```
cloud-sec-hardener/
  scripts/
    harden.sh        # Main hardening script
  Makefile            # Build and test automation
  SECURITY.md         # Security policy
  LICENSE             # MIT License
```

## Contributing

Contributions are welcome. Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
