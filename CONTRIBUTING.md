# Contributing to Easy Files for Chrome

Thank you for your interest in contributing to Easy Files for Chrome! This document provides guidelines and information for contributors.

## How to Contribute

### Reporting Bugs

1. **Check existing issues** first to avoid duplicates
2. **Use the bug report template** when creating new issues
3. **Provide detailed information**:
   - Chrome version
   - Extension version
   - Steps to reproduce
   - Expected vs actual behavior
   - Screenshots if applicable

### Suggesting Features

1. **Check the roadmap** in README.md to see if it's already planned
2. **Open a feature request issue** with:
   - Clear description of the feature
   - Use case and benefits
   - Possible implementation approach

### Code Contributions

#### Prerequisites

- Google Chrome browser
- Basic knowledge of JavaScript, HTML, CSS
- Understanding of Chrome Extension APIs
- Git and GitHub account

#### Getting Started

1. **Fork the repository**
2. **Clone your fork locally**:
   ```bash
   git clone https://github.com/yourusername/gx-popup.git
   cd gx-popup
   ```
3. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

#### Development Setup

1. **Load the extension in Chrome**:

   - Navigate to `chrome://extensions/`
   - Enable "Developer mode"
   - Click "Load unpacked"
   - Select the `easy-files-chrome` folder

2. **Make your changes**
3. **Test thoroughly**:
   - Test all existing functionality
   - Test your new feature/fix
   - Test edge cases

#### Code Standards

- **JavaScript**: Use ES6+ features where appropriate
- **Indentation**: 2 spaces, no tabs
- **Comments**: Add comments for complex logic
- **Naming**: Use descriptive variable and function names
- **Error Handling**: Always handle potential errors gracefully

#### Commit Guidelines

- Use clear, descriptive commit messages
- Start with a verb (Add, Fix, Update, Remove, etc.)
- Keep the first line under 50 characters
- Add detailed description if needed

Example:

```
Add file size display to download items

- Show file size next to filename in popup
- Format size in human-readable format (KB, MB, GB)
- Handle cases where size is not available
```

#### Pull Request Process

1. **Update documentation** if needed
2. **Test your changes** thoroughly
3. **Create a pull request** with:

   - Clear title and description
   - Link to related issues
   - Screenshots/GIFs for UI changes
   - Testing instructions

4. **Respond to feedback** promptly
5. **Keep your branch updated** with main branch

## Development Guidelines

### Chrome Extension Best Practices

- Use Manifest V3 APIs
- Minimize permissions requested
- Handle errors gracefully
- Optimize for performance
- Follow Chrome Web Store policies

### Code Organization

- Keep functions small and focused
- Separate concerns (UI, logic, storage)
- Use consistent naming conventions
- Add JSDoc comments for functions

### Testing

- Test on different Chrome versions
- Test with various download types
- Test error scenarios (no downloads, clipboard access denied)
- Test performance with many downloads

## Community Guidelines

### Be Respectful

- Use welcoming and inclusive language
- Respect differing viewpoints and experiences
- Accept constructive criticism gracefully
- Focus on what's best for the community

### Be Collaborative

- Help others learn and grow
- Share knowledge freely
- Give credit where it's due
- Be patient with newcomers

## Recognition

Contributors will be recognized in:

- README.md contributors section
- Release notes for significant contributions
- GitHub contributors graph

## Questions?

If you have questions about contributing:

1. Check this document first
2. Look at existing issues and PRs
3. Create a discussion thread
4. Reach out via issues for specific questions

Thank you for helping make Easy Files for Chrome better! 🚀
