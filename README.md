# BicOrange - Phone Case E-commerce Platform

BicOrange is a modern e-commerce platform specializing in stylish and protective phone cases. Built with PHP and MySQL, it offers a complete solution for both customers and administrators to manage phone case sales efficiently.

## 🌟 Features

### Customer Features
- 📱 Browse extensive phone case catalog
- 🛒 Shopping cart functionality
- 👤 User account management
- 📦 Order tracking
- 💬 Contact system
- 🔍 Product search
- 📱 Responsive design for all devices

### Admin Features
- 📊 Dashboard with sales overview
- 📦 Product management (Add/Edit/Delete)
- 📋 Order processing
- 👥 Customer management
- 💬 Message center
- 📸 Image upload system
- 📊 Sales statistics

## 🛠️ Technology Stack

- **Frontend:**
  - HTML5
  - CSS3
  - JavaScript
  - Font Awesome Icons
  
- **Backend:**
  - PHP
  - MySQL
  - Apache Server
  
- **Development Environment:**
  - XAMPP

## 📋 Prerequisites

- XAMPP (PHP 7.4 or higher)
- MySQL 5.7 or higher
- Apache Web Server
- Web Browser (Chrome/Firefox/Safari)

## 🚀 Installation


1. **Database Setup**
   - Start XAMPP and ensure MySQL service is running
   - Open phpMyAdmin (http://localhost/phpmyadmin)
   - Create a new database named 'bicorange'
   - Import `bicorange.sql` from the project files

2. **Project Setup**
   - Move the project folder to XAMPP's htdocs directory:
     ```bash
     C:\\xampp\\htdocs\\bicorange
     ```
   - Configure database connection in `config.php`:
     ```php
     $conn = mysqli_connect('localhost','root','','bicorange');
     ```

3. **Access the Website**
   - Start Apache in XAMPP
   - Visit: http://localhost/bicorange

## 📁 Project Structure

```
bicorange/
├── admin/                 # Admin interface files
├── css/                   # Styling files
│   ├── style.css         # Main stylesheet
│   └── admin_style.css   # Admin panel styles
├── images/               # Static images
├── js/                   # JavaScript files
├── uploaded_img/         # Product images
└── config.php           # Database configuration
```

## 🔐 Default Admin Access

- **URL:** http://localhost/bicorange/admin_page.php
- **Email:** p@gmail.com
- **Password:** PRANTO


## 🔒 Security Features

- Session-based authentication

## 📱 Mobile Responsiveness

The website is fully responsive and tested on:

- Desktop browsers

## 🛠️ Customization

### Changing Theme Colors
Edit `css/style.css`:
```css
:root {
   #ff7a00ff;  /* Primary Color */
   #333;        /* Text Color */
   #fff;        /* Background Color */
}
```

### Adding New Features
1. Create new PHP files in the root directory
2. Add necessary database tables
3. Update navigation in `header.php`




## 👥 Support

For support, email support@bicorange.com or create an issue in the repository.

## 🙏 Acknowledgments

- Font Awesome for icons
- XAMPP development team
- PHP community
- MySQL community



## 🔄 Version History

- 1.0.0 (Initial Release)
  - Basic e-commerce functionality
  - Admin panel
  - User authentication
  - Shopping cart

## 📊 Future Enhancements

- [ ] Payment gateway integration
- [ ] Multiple language support
- [ ] Advanced search filters
- [ ] Wishlist functionality
- [ ] Product reviews and ratings
- [ ] Email notifications
- [ ] Stock management
- [ ] Discount system