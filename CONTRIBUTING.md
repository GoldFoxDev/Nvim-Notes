# Contributing to NVIM Notes (NN)

Thank you for your interest in contributing to NVIM Notes (NN)! We welcome contributions from the community and are grateful for your help in improving the project. Please read this guide to understand how to contribute effectively.

## Table of Contents

- [How to Contribute](#how-to-contribute)
- [Code of Conduct](#code-of-conduct)
- [Reporting Issues](#reporting-issues)
- [Submitting Changes](#submitting-changes)
- [Pull Request Guidelines](#pull-request-guidelines)
- [Build Steps](#build-steps)

## How to Contribute

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes with clear, concise commit messages.
4. Push to your forked repository.
5. Open a pull request with a detailed description of your changes.

## Code of Conduct

We expect all contributors to adhere to our [Code of Conduct](CODE_OF_CONDUCT.md). Please ensure you are respectful and considerate of others while contributing to this project.

## Reporting Issues

If you find a bug or would like to request a feature, please [open an issue](https://github.com/lcpichette/Nvim-Notes/issues) on GitHub.

When reporting an issue:

- Provide clear steps to reproduce the issue.
- Include any relevant details, such as your environment, operating system, and Haskell version.
- Attach screenshots or logs if applicable.

## Submitting Changes

Before submitting changes, make sure to:

1. Create tests for your changes if applicable.
2. Run the tests to ensure everything works as expected.
3. Document your changes in the code or update relevant documentation files.

### Steps to submit changes:

1. Make sure your branch is up to date with the latest `main` branch.
2. Run tests to make sure nothing is broken.
3. Submit your pull request, providing a clear description of the changes you made.

## Pull Request Guidelines

- Keep pull requests focused and concise. A pull request should contain a single logical change.
- Ensure that your code follows the project's style guidelines.
- Update documentation if your changes affect how the system works (e.g., changes in APIs, configuration options, etc.).
- Address any feedback or requested changes from reviewers in a timely manner.

## Build Steps

To build the project locally, follow these steps:

1. Install the [Glasgow Haskell Compiler (GHC)](https://www.haskell.org/ghc/) if you don't already have it installed.
2. Clone the repository and navigate to the root of the project.
3. Run the following command to build the project:
   ```bash
   cabal install --installdir="<YOUR_WORKING_DIRECTORY>"
   ```
