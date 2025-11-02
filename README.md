# Prysm Homebrew Tap

Official Homebrew tap for Prysm - Zero Trust Infrastructure Access Platform.

## Installation

### Open-Core Edition (Community)

```bash
brew tap prysmsh/tap
brew install prysm-open-core
```

### Enterprise Edition

```bash
brew tap prysmsh/tap
brew install prysm-cli
```

## What's Included

### `prysm-open-core`
- **Repository**: [prysmsh/prysm-community](https://github.com/prysmsh/prysm-community)
- **License**: MIT
- **Features**: 
  - Zero Trust Network Access (ZTNA)
  - WireGuard mesh networking with DERP relay
  - Kubernetes cluster management
  - DNS management
  - Exit router functionality
  - Basic monitoring and analytics
  - Team management

### `prysm-cli` (Enterprise)
- **Repository**: [prysmsh/prysm](https://github.com/prysmsh/prysm) (private)
- **License**: Commercial
- **Additional Features**:
  - Advanced threat intelligence
  - Quantum security
  - Honeypot deception technology
  - AI-powered analytics
  - Natural language queries
  - Enterprise support

## Usage

After installation:

```bash
# Check version
prysm --version

# View help
prysm --help

# Login to Prysm
prysm login

# List clusters
prysm clusters list

# Get cluster details
prysm clusters get <id>

# View analytics
prysm analytics clusters <id>
```

## Getting Started

1. **Sign up** at [app.prysm.sh](https://app.prysm.sh)
2. **Install the CLI** using Homebrew
3. **Login**: `prysm login`
4. **Connect your cluster**: Follow the [agent installation guide](https://github.com/prysmsh/prysm-community/blob/main/docs/agent-installation.md)

## Documentation

- [Open-Core Documentation](https://github.com/prysmsh/prysm-community/tree/main/docs)
- [CLI Reference](https://github.com/prysmsh/prysm-community/blob/main/docs/cli-reference.md)
- [Getting Started Guide](https://github.com/prysmsh/prysm-community/blob/main/docs/getting-started.md)

## Community & Support

- **Open-Core Issues**: [GitHub Issues](https://github.com/prysmsh/prysm-community/issues)
- **Discussions**: [GitHub Discussions](https://github.com/prysmsh/prysm-community/discussions)
- **Enterprise Support**: [prysm.sh/support](https://prysm.sh/support)

## Upgrading

```bash
# Update tap
brew update

# Upgrade to latest version
brew upgrade prysm-open-core
# or
brew upgrade prysm-cli
```

## Development

To test formula changes locally:

```bash
# Audit the formula
brew audit --strict prysm-open-core

# Test installation
brew install --build-from-source prysm-open-core

# Run tests
brew test prysm-open-core
```

## Maintainers

This tap is maintained by the Prysm team. For formula issues, please open an issue in this repository.

## License

- Open-Core formula (`prysm-open-core`): MIT
- Enterprise formula (`prysm-cli`): Proprietary
