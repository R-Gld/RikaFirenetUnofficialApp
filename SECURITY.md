# Security Policy

## Supported Versions

The following versions of Rika Firenet Unofficial are currently supported with security updates:

| Version | Supported          |
| ------- | ------------------ |
| 1.3.x   | :white_check_mark: |
| 1.2.x   | :white_check_mark: |
| 1.1.x   | :x:                |
| < 1.1   | :x:                |

**Note:** We recommend always using the latest stable release to benefit from the most recent security improvements and bug fixes.

---

## Security Considerations

### Data Storage

- **Credentials**: Email and password are encrypted using `FlutterSecureStorage` (Android Keystore/iOS Keychain)
- **Session cookies**: Stored locally via `PersistCookieJar` for persistent authentication
- **App settings**: Stored in `SharedPreferences` (non-sensitive data only)
- **Secure deletion**: Multi-layer cryptographic erasure of credentials on logout
- **No cloud storage**: All data remains on your device

### Authentication

- **Biometric authentication**: Optional fingerprint/Face ID app lock for quick access (Android & iOS)
- **Password fallback**: Always available if biometric authentication fails
- **Session management**: Automatic re-authentication when sessions expire

### Network Security

- **HTTPS enforced**: All communications with Rika Firenet API use HTTPS
- **Certificate pinning**: SSL certificate validation to prevent man-in-the-middle attacks
- **Rate limiting**: Client-side request throttling with exponential backoff to prevent abuse
- **No third-party servers**: The app communicates only with official Rika Firenet API
- **No analytics or tracking**: No data is transmitted to third parties or developers

### Code Obfuscation

- **ProGuard/R8 enabled**: Release builds use code shrinking and obfuscation
- **Open source**: Source code is publicly available for security audits

### Important Disclaimer

⚠️ **This app is UNOFFICIAL and NOT affiliated with RIKA.** It uses the Rika Firenet web interface in an undocumented manner. While we implement security best practices, users should:

- Never share their Rika Firenet credentials with anyone
- Use strong, unique passwords
- Regularly review their stove's activity
- Not rely solely on this app for critical safety functions

---

## Reporting a Vulnerability

If you discover a security vulnerability in Rika Firenet Unofficial, please help us protect our users by reporting it responsibly.

### Where to Report

**DO NOT open a public GitHub issue for security vulnerabilities.**

Instead, please report security issues via one of the following methods:

1. **GitHub Security Advisories** (recommended):
   - Go to [Security Advisories](https://github.com/R-Gld/RikaFirenetUnofficialApp/security/advisories)
   - Click "Report a vulnerability"
   - Fill in the details

2. **Private email to the maintainer**:
   - Contact via GitHub profile: [@R-Gld](https://github.com/R-Gld)
   - Include `[SECURITY]` in the subject line

### What to Include

Please provide the following information:

- **Description** of the vulnerability
- **Steps to reproduce** the issue
- **Potential impact** (what could an attacker do?)
- **Affected versions** (if known)
- **Suggested fix** (if you have one)
- **Your contact information** for follow-up questions

### What to Expect

- **Acknowledgment**: Within **48 hours** of your report
- **Initial assessment**: Within **7 days** we'll confirm if the issue is a valid security vulnerability
- **Updates**: You'll receive progress updates at least every **14 days**
- **Resolution timeline**:
  - **Critical vulnerabilities**: Patch within 7 days
  - **High severity**: Patch within 30 days
  - **Medium/Low severity**: Patch in next scheduled release

### If the Vulnerability is Accepted

1. We'll work on a fix and prepare a security patch
2. You'll be credited in the security advisory (unless you prefer to remain anonymous)
3. We'll coordinate disclosure timing with you
4. A security advisory will be published with the patch release
5. Users will be notified via release notes

### If the Vulnerability is Declined

If we determine the reported issue is not a security vulnerability, we'll explain why and may suggest:

- Opening a regular GitHub issue if it's a bug
- Submitting a feature request if it's an enhancement
- Clarifying if additional information changes the assessment

---

## Security Best Practices for Users

To maximize your security when using Rika Firenet Unofficial:

### Credentials Management

- **Use a strong password** for your Rika Firenet account (12+ characters, mixed case, numbers, symbols)
- **Don't share credentials** with anyone
- **Change your password regularly** (every 3-6 months)
- **Enable two-factor authentication** on your Rika Firenet account (if available)

### Device Security

- **Lock your device** with a PIN, password, or biometric authentication
- **Enable biometric lock**: Use the app's biometric authentication feature for quick and secure access
- **Keep your OS updated** to receive security patches
- **Only install from official stores** (Google Play Store, App Store)
- **Review app permissions** regularly

### App Security

- **Update regularly**: Install updates promptly to receive security fixes
- **Log out when selling/discarding device**: Remove credentials before transferring ownership
- **Review notification settings**: Ensure sensitive information isn't displayed on lock screen

### Network Security

- **Use secure Wi-Fi**: Avoid using the app on public/untrusted Wi-Fi networks
- **Consider a VPN**: For additional privacy when accessing your stove remotely

---

## Known Limitations

### Unofficial API Usage

This app uses the Rika Firenet web interface API, which is:

- **Undocumented**: Not officially supported by RIKA
- **Subject to change**: RIKA may modify the API without notice, potentially breaking functionality
- **No official support**: RIKA is not responsible for issues caused by this app

### Background Tasks

- **WorkManager limitations**: Android may restrict background tasks based on battery optimization settings
- **Notification delays**: Background sync interval may not be perfectly precise due to OS restrictions

### Certificate Pinning Maintenance

The app uses SSL certificate pinning to prevent man-in-the-middle attacks. When RIKA renews their SSL certificate, the app requires an update:

**Certificate Rotation Strategy**:

1. **~30 days before expiry**: Add new certificate hash to the pinned list (keep old hash)
2. **Release update**: Publish new app version with both hashes
3. **Wait for adoption**: Monitor update rate (~90-95% of active users)
4. **Remove old hash**: After sufficient adoption, remove the expired hash in next release

**Current Certificate**:
- Hash: `mAXiOaBzLsq4NP7qbVl62bHRXvzdVhKPxfHXAYMWAY4=`
- Valid as of: 2025-12-31
- Next review: Check certificate expiry periodically

**To regenerate hash**:
```bash
echo | openssl s_client -connect www.rika-firenet.com:443 -servername www.rika-firenet.com 2>/dev/null | \
openssl x509 -pubkey -noout | openssl pkey -pubin -outform DER | \
openssl dgst -sha256 -binary | openssl enc -base64
```

**Impact if not updated**:
- App will reject SSL connections to Rika Firenet
- Users will see "Certificate pinning validation failed" errors
- Authentication will fail until app is updated

---

## Security Audit History

| Date       | Type          | Findings | Status   |
|------------|---------------|----------|----------|
| 2025-01-XX | Self-audit    | None     | Complete |

**Note:** No formal third-party security audits have been performed. Contributions from security researchers are welcome.

---

## Contact

For non-security-related issues, please use:

- **Bug reports**: [GitHub Issues](https://github.com/R-Gld/RikaFirenetUnofficialApp/issues)
- **Feature requests**: [GitHub Issues](https://github.com/R-Gld/RikaFirenetUnofficialApp/issues)
- **General questions**: GitHub Discussions or Issues

Thank you for helping keep Rika Firenet Unofficial secure! 🔒