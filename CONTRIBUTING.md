# Contributing to www.gmrafi.com.bd

Thank you for your interest in this project! This is a **personal portfolio website** for Md Golam Mubasshir Rafi, showcasing academic research, professional experience, and achievements.

## Important Notice

This is a **personal portfolio project**, not a traditional open-source software project. The content (text, photos, CV, research summaries, design concept) is **proprietary** and protected under the Copyright Act 2023 (Bangladesh). Please see [LICENSE.md](LICENSE.md) and [copyright.html](https://www.gmrafi.com.bd/copyright.html) for details.

## Types of Contributions Welcome

While the original content is protected, we welcome contributions in the following areas:

### ✅ Welcomed Contributions:

1. **Bug Reports**
   - Reporting broken links or navigation issues
   - Identifying display/rendering problems on different devices or browsers
   - Pointing out typos or grammatical errors
   - Reporting accessibility issues

2. **Technical Improvements**
   - Performance optimization suggestions
   - SEO improvements (meta tags, structured data)
   - Accessibility enhancements (ARIA labels, screen reader compatibility)
   - Security improvements
   - Mobile responsiveness fixes

3. **Code Quality**
   - Fixing HTML/CSS validation errors
   - Improving code organization
   - Suggesting better Tailwind CSS practices
   - Optimizing JavaScript performance

4. **Feature Suggestions**
   - Proposing new functionality that enhances user experience
   - Suggesting improvements to navigation or layout
   - Recommending better ways to present research or achievements

### ❌ Not Accepted:

- Changes to personal information, CV content, or biographical details
- Modifications to research summaries, achievements, or educational background
- Alterations to personal photographs
- Major design overhauls without prior discussion
- Content additions that are not factually accurate

## How to Contribute

### 1. Reporting Issues

**Before creating an issue**, please check if it already exists.

When reporting an issue, please include:
- **Clear Description**: What is the problem?
- **Steps to Reproduce**: How can the issue be replicated?
- **Expected Behavior**: What should happen?
- **Actual Behavior**: What actually happens?
- **Screenshots**: If applicable, add screenshots
- **Environment**: Browser, OS, device (mobile/desktop)
- **URL**: Link to the specific page with the issue

**Example:**
```
Title: Broken link to research paper on Publications page

Description: The DOI link for the paper "Fintech Adoption in Bangladesh" returns a 404 error.

Steps to Reproduce:
1. Go to www.gmrafi.com.bd/research.html
2. Click on the DOI link for "Fintech Adoption" paper
3. Observe 404 error

Expected: Link should open the published paper
Actual: 404 Not Found error

Browser: Chrome 120, Windows 11
```

### 2. Suggesting Enhancements

For feature requests or enhancements:
- **Use Case**: Explain why this enhancement would be valuable
- **Proposed Solution**: Describe how it could be implemented
- **Alternatives**: Mention any alternative solutions you've considered
- **Mockups**: If design-related, include sketches or mockups

### 3. Submitting Pull Requests

**Before submitting a PR:**
1. **Discuss First**: Open an issue to discuss the proposed change
2. **Wait for Approval**: Get approval from the repository owner before starting work
3. **Follow Standards**: Maintain the existing code style and structure

**Pull Request Process:**

1. **Fork the Repository**
   ```bash
   git clone https://github.com/gmrafi/gmrafi.github.io.git
   cd gmrafi.github.io
   ```

2. **Create a Branch**
   ```bash
   git checkout -b fix/issue-description
   # or
   git checkout -b feature/feature-name
   ```

3. **Make Your Changes**
   - Keep changes focused and minimal
   - Test thoroughly on multiple browsers (Chrome, Firefox, Safari, Edge)
   - Test on mobile and desktop devices
   - Ensure no broken links or console errors

4. **Test Locally**
   ```bash
   # Simple HTTP server
   npx http-server -p 8080
   # or
   python -m http.server 8080
   ```
   Open http://localhost:8080 in your browser

5. **Commit Your Changes**
   ```bash
   git add .
   git commit -m "Fix: Description of what was fixed"
   # or
   git commit -m "Enhancement: Description of enhancement"
   ```

   **Commit Message Format:**
   - `Fix: [Description]` - Bug fixes
   - `Enhancement: [Description]` - New features or improvements
   - `Refactor: [Description]` - Code restructuring
   - `Docs: [Description]` - Documentation updates
   - `Style: [Description]` - CSS/design changes
   - `Performance: [Description]` - Performance improvements

6. **Push to Your Fork**
   ```bash
   git push origin fix/issue-description
   ```

7. **Create Pull Request**
   - Go to your fork on GitHub
   - Click "New Pull Request"
   - Provide a clear title and description
   - Reference related issues (e.g., "Fixes #123")
   - List all changes made
   - Add screenshots for visual changes

**Pull Request Template:**
```markdown
## Description
Brief description of changes

## Related Issue
Fixes #(issue number)

## Type of Change
- [ ] Bug fix
- [ ] Enhancement
- [ ] Performance improvement
- [ ] Accessibility improvement
- [ ] Documentation update

## Changes Made
- Change 1
- Change 2
- Change 3

## Testing Done
- Tested on Chrome, Firefox, Edge
- Tested on mobile (iOS/Android)
- Tested on desktop (Windows/Mac)
- No console errors
- All links working

## Screenshots (if applicable)
[Add screenshots here]
```

## Code Standards

### HTML/CSS Guidelines:
- Use **semantic HTML5** elements
- Maintain **responsive design** (mobile-first approach)
- Use **Tailwind CSS** utility classes consistently
- Ensure **accessibility** (alt text, ARIA labels, keyboard navigation)
- Keep code **clean and well-commented**
- Validate HTML: [W3C Validator](https://validator.w3.org/)

### Performance Guidelines:
- Optimize images (compress, use appropriate formats)
- Minimize HTTP requests
- Ensure fast page load times
- Use lazy loading for images where appropriate

### Browser Compatibility:
- Test on Chrome, Firefox, Safari, Edge (latest versions)
- Ensure mobile responsiveness (iOS Safari, Chrome Mobile)
- Check tablet devices (iPad, Android tablets)

## Content Guidelines

**❌ Do Not:**
- Change personal information, CV details, or biographical content
- Modify research summaries or publication details
- Alter personal photographs or images
- Add content that is not factually accurate
- Make major design changes without discussion

**✅ Do:**
- Fix typos and grammatical errors (notify owner to verify accuracy)
- Report outdated information (owner will update)
- Suggest better ways to present existing information
- Improve technical implementation while preserving design intent

## Review Process

1. **Initial Review**: Repository owner (Md Golam Mubasshir Rafi) will review the PR within 7 days
2. **Feedback**: Changes may be requested for clarification or improvement
3. **Approval**: Once approved, the PR will be merged
4. **Deployment**: Changes will be deployed to GitHub Pages and www.gmrafi.com.bd

## Communication

For questions, discussions, or clarifications:
- **Open an Issue**: For technical questions or bug reports
- **Email**: [rafi@gmrafi.com.bd](mailto:rafi@gmrafi.com.bd) for private matters
- **LinkedIn**: [linkedin.com/in/gmrafi](https://linkedin.com/in/gmrafi) for professional inquiries

## Recognition

Contributors who provide valuable improvements will be acknowledged in the [README.md](README.md) file (with their permission).

## Legal

By contributing, you agree that:
- Your contributions will be licensed under the same license as this project (see [LICENSE.md](LICENSE.md))
- You have the right to submit the contribution
- Your contribution does not violate any third-party copyrights or intellectual property rights
- You understand this is a personal portfolio project with protected original content

## Questions?

If you have questions about contributing, please:
1. Check this document first
2. Review [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)
3. Check existing issues for similar questions
4. Contact via email: [rafi@gmrafi.com.bd](mailto:rafi@gmrafi.com.bd)

---

Thank you for helping improve www.gmrafi.com.bd! 🙏

**Last Updated**: January 2, 2026
