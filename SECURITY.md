# Security Policy

## Purpose

This document outlines the security policy for www.gmrafi.com.bd (hosted on GitHub Pages at gmrafi.github.io). As a personal portfolio website showcasing academic research and professional achievements, security is important for protecting personal information, maintaining website integrity, and ensuring user privacy.

## Supported Versions

This is a static website hosted on GitHub Pages. Security updates are applied continuously as issues are identified.

| Version | Supported          |
| ------- | ------------------ |
| Latest (main branch) | ✅ Actively maintained |
| Older commits | ❌ Not supported |

**Current Deployment:**
- **Primary Domain**: www.gmrafi.com.bd (Cloudflare CDN)
- **GitHub Pages**: gmrafi.github.io
- **Repository**: Public repository on GitHub

## Security Considerations

### 1. Personal Information Protection

This website contains personal information including:
- Full name, educational background, contact details
- Personal photographs
- CV/resume information
- Research work and publications
- Professional affiliations

**Protection Measures:**
- No sensitive credentials or API keys in repository
- Contact forms (if any) use secure protocols
- Email addresses are displayed but protected from scraping
- Personal photos are watermarked or low-resolution where appropriate

### 2. Copyright & Intellectual Property

- Original content protected under Copyright Act 2023 (Bangladesh)
- See [LICENSE.md](LICENSE.md) and [copyright.html](https://www.gmrafi.com.bd/copyright.html)
- DMCA/copyright infringement reporting available

### 3. Third-Party Dependencies

This website uses the following third-party resources:

**CDN Resources:**
- Tailwind CSS (via CDN): https://cdn.tailwindcss.com
- Font Awesome (via CDN): https://cdnjs.cloudflare.com/ajax/libs/font-awesome/

**Security Practices:**
- Using well-established CDNs with strong security records
- Monitoring for security advisories related to dependencies
- Regular updates to latest stable versions
- No user authentication or backend databases (static site)

### 4. No User Data Collection

This website is a **static portfolio** and does **NOT**:
- Collect user login credentials
- Store user data in databases
- Process payments or financial information
- Use cookies for tracking (except analytics, if implemented)
- Collect personal information from visitors

**Analytics (if implemented):**
- May use privacy-respecting analytics (e.g., Google Analytics, Plausible)
- See [privacy-policy.html](https://www.gmrafi.com.bd/privacy-policy.html) for details

## Reporting a Vulnerability

If you discover a security vulnerability or potential security issue with this website, please report it responsibly.

### What to Report:

- **Security vulnerabilities** in the website code or configuration
- **XSS (Cross-Site Scripting)** vulnerabilities
- **Content injection** possibilities
- **Broken authentication** or access control issues
- **Sensitive data exposure** (if any credentials accidentally committed)
- **Security misconfigurations** in headers, CSP, or CDN settings
- **Known vulnerabilities** in third-party dependencies
- **Malicious content** or phishing attempts using this domain

### How to Report:

**Email (Preferred):**
- Send details to: **[rafi@gmrafi.com.bd](mailto:rafi@gmrafi.com.bd)**
- Subject line: "Security Vulnerability Report - www.gmrafi.com.bd"

**What to Include:**
1. **Description**: Clear description of the vulnerability
2. **Type**: Category (XSS, injection, misconfiguration, etc.)
3. **Location**: URL or file path where vulnerability exists
4. **Steps to Reproduce**: Detailed steps to reproduce the issue
5. **Impact**: Potential impact and severity
6. **Proof of Concept**: Screenshots, code snippets, or reproduction scripts
7. **Suggested Fix**: If you have a solution, please include it
8. **Your Contact**: How we can reach you for follow-up (optional for anonymity)

**Example Report:**
```
Subject: Security Vulnerability Report - www.gmrafi.com.bd

Vulnerability Type: XSS (Cross-Site Scripting)

Description: Potential XSS vulnerability in contact form submission

Location: www.gmrafi.com.bd/contact.html (if exists)

Steps to Reproduce:
1. Navigate to contact form
2. Enter <script>alert('XSS')</script> in the name field
3. Submit form
4. Observe script execution

Impact: Could allow attackers to execute malicious scripts in user browsers

Suggested Fix: Implement input sanitization and Content Security Policy headers

Contact: [your email if you want credit/follow-up]
```

### Response Timeline:

1. **Acknowledgment**: Within **48 hours** of receiving your report
2. **Initial Assessment**: Within **7 days** - we'll evaluate severity and impact
3. **Fix Development**: Depending on severity:
   - **Critical**: Within 24-48 hours
   - **High**: Within 7 days
   - **Medium**: Within 14 days
   - **Low**: Within 30 days
4. **Deployment**: Fix will be deployed to production after testing
5. **Disclosure**: Public disclosure after fix is deployed (with your permission for credit)

### Responsible Disclosure:

We ask that you:
- **Do not publicly disclose** the vulnerability until we've had time to fix it
- **Do not exploit** the vulnerability beyond what is necessary to demonstrate it
- **Act in good faith** to avoid privacy violations, data destruction, or service disruption
- **Allow reasonable time** (up to 90 days) for critical fixes before public disclosure

We commit to:
- **Acknowledge** your report promptly
- **Keep you updated** on our progress
- **Give credit** for the discovery (if you wish) in our security acknowledgments
- **Not take legal action** against good-faith security researchers

## Security Best Practices (For Contributors)

If you're contributing to this project, please follow these security practices:

### 1. Code Security:
- **Never commit** sensitive information (passwords, API keys, tokens)
- **Validate all inputs** if adding forms or JavaScript interactions
- **Sanitize outputs** to prevent XSS attacks
- **Use HTTPS** for all external resources
- **Implement CSP** (Content Security Policy) headers where appropriate

### 2. Dependency Security:
- Use **trusted CDNs** only (cdnjs, unpkg, official sources)
- **Check for vulnerabilities** in third-party libraries
- Keep **dependencies updated** to latest secure versions
- Use **Subresource Integrity (SRI)** hashes for CDN resources where possible

### 3. Access Control:
- **No hardcoded credentials** in source code
- **Review permissions** before committing files
- **Use .gitignore** to exclude sensitive files

### 4. Testing:
- **Test for XSS** vulnerabilities in any user-facing inputs
- **Check for broken links** that could lead to malicious sites
- **Validate HTML/CSS** for potential injection points
- **Test on multiple browsers** for security warnings

## Security Headers

This website aims to implement the following security headers (via Cloudflare, Vercel, or GitHub Pages configuration):

- **Content-Security-Policy (CSP)**: Restricts resource loading
- **X-Frame-Options**: Prevents clickjacking (DENY or SAMEORIGIN)
- **X-Content-Type-Options**: Prevents MIME-sniffing (nosniff)
- **Strict-Transport-Security (HSTS)**: Enforces HTTPS
- **Referrer-Policy**: Controls referrer information
- **Permissions-Policy**: Restricts browser features

## Privacy

See [privacy-policy.html](https://www.gmrafi.com.bd/privacy-policy.html) for details on:
- What data is collected (if any)
- How data is used
- Third-party services (analytics, CDNs)
- User rights under data protection laws

## Incident Response

In case of a security incident:

1. **Detection**: Identify and verify the security issue
2. **Containment**: Take immediate action to contain the breach
3. **Investigation**: Assess the impact and root cause
4. **Remediation**: Fix the vulnerability and prevent recurrence
5. **Communication**: Notify affected parties if personal data was compromised
6. **Documentation**: Document the incident and lessons learned

## Contact

For security-related inquiries:

**Security Contact**: Md Golam Mubasshir Rafi
- **Email**: [rafi@gmrafi.com.bd](mailto:rafi@gmrafi.com.bd)
- **Alternative**: [golammubasshirrafi@gmail.com](mailto:golammubasshirrafi@gmail.com)
- **Website**: [www.gmrafi.com.bd](https://www.gmrafi.com.bd)
- **Response Time**: Within 48 hours

For urgent security issues, please use email with "URGENT SECURITY" in the subject line.

## Acknowledgments

We appreciate the efforts of security researchers who help keep this website secure. If you responsibly disclose a vulnerability, we're happy to:
- **Acknowledge your contribution** (with your permission)
- **Provide attribution** in this file and README.md
- **Thank you publicly** on social media (if you wish)

### Security Contributors:
*No reported vulnerabilities yet - be the first to help improve security!*

---

## Legal

This security policy applies to:
- **www.gmrafi.com.bd** (primary domain)
- **gmrafi.github.io** (GitHub Pages)
- This GitHub repository: [github.com/gmrafi/gmrafi.github.io](https://github.com/gmrafi/gmrafi.github.io)

Governed by the laws of Bangladesh. See [LICENSE.md](LICENSE.md) for intellectual property terms.

---

**Last Updated**: January 2, 2026

**Thank you for helping keep www.gmrafi.com.bd secure!** 🔒
