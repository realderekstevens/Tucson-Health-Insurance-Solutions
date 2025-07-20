# Tucson Health Insurance Solutions

## Overview
Tucson Health Insurance Solutions is a professional website for a Tucson, Arizona-based health insurance agency, led by Derek Stevens. The site provides information on health insurance services, including Medicare Advantage, ACA Marketplace plans, group health insurance, and more, tailored for residents in Arizona, California, Florida, New Mexico, Texas, and Utah. The website is hosted on a Debian 12 server using Nginx, with subdomains for state-specific content and a blog. This repository contains the website’s source code, including HTML, PHP, and Nginx configuration files.

## Features
- **Responsive Design**: A clean, user-friendly HTML interface styled with Tailwind CSS, optimized for desktop and mobile.
- **Contact Form**: A PHP-based contact form (`contact.php`) for client inquiries, with input validation and email functionality.
- **Subdomains**: State-specific subdomains (e.g., `arizona.tucsonhealthinsurancesolutions.com`, `blog.tucsonhealthinsurancesolutions.com`) for targeted content.
- **Nginx Configuration**: Secure, modular server setup with HTTPS, static file caching, custom 404 pages, and PHP support.
- **Services Section**: Details on offerings like Medicare Advantage, ACA plans, group health insurance, and long-term care.
- **About Page**: Information about Derek Stevens, emphasizing local expertise and personalized service.

## Directory Structure
```
/var/www/tucsonhealthinsurancesolutions/
├── index.html              # Main website landing page
├── contact.php             # Contact form processing script
├── 404.html                # Custom 404 error page
├── /arizona/               # Arizona subdomain content
├── /blog/                  # Blog subdomain content (optional WordPress setup)
├── /california/            # California subdomain content
├── /florida/               # Florida subdomain content
├── /michigan/              # Michigan subdomain content
├── /newmexico/             # New Mexico subdomain content
├── /texas/                 # Texas subdomain content
├── /utah/                  # Utah subdomain content
/etc/nginx/
├── /sites-available/tucsonhealthinsurancesolutions.conf  # Nginx configuration
├── /snippets/ssl-params.conf                            # Shared SSL settings
├── /snippets/security-headers.conf                      # Security headers
```

## Installation
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/realderekstevens/Tucson-Health-Insurance-Solutions.git
   ```

2. **Set Up Directory Structure**:
   - Copy website files to `/var/www/tucsonhealthinsurancesolutions/`.
   - Set permissions: `chown -R www-data:www-data /var/www/tucsonhealthinsurancesolutions` and `chmod -R 644 /var/www/tucsonhealthinsurancesolutions`.

3. **Configure Nginx**:
   - Copy `tucsonhealthinsurancesolutions.conf` to `/etc/nginx/sites-available/`.
   - Create a symlink: `ln -s /etc/nginx/sites-available/tucsonhealthinsurancesolutions.conf /etc/nginx/sites-enabled/`.
   - Copy `ssl-params.conf` and `security-headers.conf` to `/etc/nginx/snippets/`.
   - Test configuration: `nginx -t`.
   - Reload Nginx: `systemctl reload nginx`.

4. **Install Dependencies**:
   - Install Nginx and PHP-FPM on Debian 12:
     ```bash
     apt update
     apt install nginx php8.1-fpm php8.1-common
     ```
   - Ensure PHP-FPM is running: `systemctl status php8.1-fpm`.

5. **Set Up SSL**:
   - Obtain a Let’s Encrypt certificate:
     ```bash
     certbot --nginx -d tucsonhealthinsurancesolutions.com -d www.tucsonhealthinsurancesolutions.com -d arizona.tucsonhealthinsurancesolutions.com -d www.arizona.tucsonhealthinsurancesolutions.com ...
     ```
   - Update `/etc/nginx/snippets/ssl-params.conf` with certificate paths.

6. **Mail Server**:
   - Install and configure a mail server (e.g., Postfix) for `contact.php`:
     ```bash
     apt install postfix
     ```
   - Alternatively, configure an external SMTP service (e.g., SendGrid) in `contact.php`.

7. **Optional Blog Setup**:
   - For the Blog subdomain, install WordPress in `/var/www/tucsonhealthinsurancesolutions/blog` and configure a database (e.g., MySQL).

## Usage
- Access the main site: `https://tucsonhealthinsurancesolutions.com`
- Access subdomains: e.g., `https://arizona.tucsonhealthinsurancesolutions.com`, `https://blog.tucsonhealthinsurancesolutions.com`
- Submit inquiries via the contact form: `https://tucsonhealthinsurancesolutions.com/contact.php`
- Monitor logs: `/var/log/nginx/*.access.log` and `/var/log/nginx/*.error.log`

## Contributing
Contributions are welcome! Please submit a pull request or open an issue for bug reports, feature requests, or improvements.

## License
This project is licensed under the MIT License.

## Contact
For inquiries, contact Derek Stevens at Derek@TucsonHealthInsuranceSolutions.com
