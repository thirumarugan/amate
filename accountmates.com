<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accounting Mate | Premium Financial Excellence</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* Enhanced Base Styles */
        :root {
            --primary-blue: #1e3a5f;
            --secondary-blue: #2d4f7c;
            --light-blue: #4a76b0;
            --accent-red: #e74c3c;
            --light-red: #ff6b6b;
            --soft-red: #ff8a8a;
            --white: #ffffff;
            --light-gray: #f8f9fa;
            --medium-gray: #e9ecef;
            --dark-gray: #2c3e50;
            --text-color: #495057;
            --shadow-light: 0 5px 15px rgba(0, 0, 0, 0.05);
            --shadow-medium: 0 10px 25px rgba(0, 0, 0, 0.1);
            --shadow-heavy: 0 15px 35px rgba(0, 0, 0, 0.15);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            line-height: 1.7;
            color: var(--text-color);
            background-color: var(--white);
            overflow-x: hidden;
            font-weight: 400;
        }

        h1, h2, h3, h4, h5, h6 {
            font-weight: 700;
            line-height: 1.3;
            margin-bottom: 1.2rem;
            color: var(--dark-gray);
        }

        h1 {
            font-size: 3.2rem;
            font-weight: 800;
            background: linear-gradient(135deg, var(--dark-gray), var(--primary-blue));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 0 2px 10px rgba(0,0,0,0.05);
        }

        h2 {
            font-size: 2.8rem;
            position: relative;
            margin-bottom: 2.5rem;
        }

        h2::after {
            content: '';
            position: absolute;
            bottom: -15px;
            left: 0;
            width: 80px;
            height: 5px;
            background: linear-gradient(90deg, var(--light-red), var(--primary-blue));
            border-radius: 3px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .section-title-center h2::after {
            left: 50%;
            transform: translateX(-50%);
        }

        p {
            margin-bottom: 1.5rem;
            font-size: 1.1rem;
            line-height: 1.7;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 16px 36px;
            background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
            color: var(--white);
            border: none;
            border-radius: 8px;
            font-weight: 600;
            font-size: 1.05rem;
            cursor: pointer;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            text-decoration: none;
            text-align: center;
            box-shadow: var(--shadow-medium);
            position: relative;
            overflow: hidden;
        }

        .btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
            transition: left 0.5s;
        }

        .btn:hover::before {
            left: 100%;
        }

        .btn:hover {
            background: linear-gradient(135deg, var(--light-red), var(--soft-red));
            transform: translateY(-5px);
            box-shadow: var(--shadow-heavy);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid var(--primary-blue);
            color: var(--primary-blue);
            box-shadow: none;
        }

        .btn-outline:hover {
            background: var(--primary-blue);
            color: var(--white);
        }

        section {
            padding: 100px 0;
            position: relative;
        }

        .section-light {
            background-color: var(--light-gray);
        }

        .section-dark {
            background: linear-gradient(135deg, var(--primary-blue), #152642);
            color: var(--white);
        }

        .section-dark h2 {
            color: var(--white);
        }

        .text-center {
            text-align: center;
        }

        /* Enhanced Header & Navigation */
        header {
            background-color: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            box-shadow: 0 2px 30px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            transition: all 0.3s ease;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
        }

        .logo {
            font-weight: 800;
            font-size: 1.9rem;
            color: var(--primary-blue);
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .logo span {
            color: var(--light-red);
        }

        .logo i {
            margin-right: 12px;
            font-size: 1.6rem;
        }

        nav ul {
            display: flex;
            list-style: none;
        }

        nav ul li {
            margin-left: 35px;
        }

        nav ul li a {
            text-decoration: none;
            color: var(--dark-gray);
            font-weight: 600;
            transition: all 0.3s ease;
            position: relative;
            font-size: 1rem;
            padding: 5px 0;
        }

        nav ul li a:hover {
            color: var(--light-red);
        }

        nav ul li a::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 3px;
            background: linear-gradient(90deg, var(--light-red), var(--primary-blue));
            transition: width 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            border-radius: 2px;
        }

        nav ul li a:hover::after {
            width: 100%;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
            color: var(--primary-blue);
        }

        /* Enhanced Hero Section */
        .hero {
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.9), rgba(248, 249, 250, 0.8)), url('https://images.unsplash.com/photo-1554224155-6726b3ff858f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1600&q=80') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            align-items: center;
            color: var(--dark-gray);
            margin-top: 80px;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" width="100" height="100" opacity="0.03"><defs><pattern id="grid" width="10" height="10" patternUnits="userSpaceOnUse"><path d="M 10 0 L 0 0 0 10" fill="none" stroke="%231e3a5f" stroke-width="0.5"/></pattern></defs><rect width="100" height="100" fill="url(%23grid)"/></svg>');
        }

        .hero-content {
            max-width: 700px;
        }

        .hero h1 {
            font-size: 3.8rem;
            margin-bottom: 1.5rem;
            opacity: 0;
            animation: fadeInUp 1s forwards 0.5s;
            line-height: 1.2;
        }

        .hero p {
            font-size: 1.4rem;
            margin-bottom: 2.5rem;
            opacity: 0;
            animation: fadeInUp 1s forwards 1s;
            color: var(--text-color);
        }

        .hero .btn {
            opacity: 0;
            animation: fadeInUp 1s forwards 1.5s;
        }

        /* Enhanced About Section */
        .about-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 70px;
            align-items: center;
        }

        .about-text h2 {
            margin-bottom: 1.5rem;
        }

        .about-image {
            border-radius: 16px;
            overflow: hidden;
            box-shadow: var(--shadow-heavy);
            position: relative;
            transition: transform 0.5s ease;
        }

        .about-image:hover {
            transform: translateY(-10px);
        }

        .about-image::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg, rgba(30, 58, 95, 0.1), rgba(255, 107, 107, 0.1));
            z-index: 1;
        }

        .about-image img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.8s ease;
        }

        .about-image:hover img {
            transform: scale(1.05);
        }

        /* Enhanced Services Section */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 40px;
            margin-top: 60px;
        }

        .service-card {
            background-color: var(--white);
            border-radius: 16px;
            padding: 45px 35px;
            box-shadow: var(--shadow-medium);
            transition: all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            position: relative;
            overflow: hidden;
            text-align: center;
        }

        .service-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, var(--light-red), var(--primary-blue));
            transform: scaleX(0);
            transform-origin: left;
            transition: transform 0.5s ease;
        }

        .service-card:hover::before {
            transform: scaleX(1);
        }

        .service-card:hover {
            transform: translateY(-15px);
            box-shadow: var(--shadow-heavy);
        }

        .service-icon {
            font-size: 3.5rem;
            color: var(--light-red);
            margin-bottom: 1.8rem;
            display: inline-block;
            transition: transform 0.5s ease;
        }

        .service-card:hover .service-icon {
            transform: scale(1.2);
        }

        .service-card h3 {
            margin-bottom: 1.2rem;
            font-size: 1.6rem;
        }

        /* Enhanced Case Studies Section */
        .case-studies-section {
            background-color: var(--white);
            position: relative;
        }

        .case-studies-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(360px, 1fr));
            gap: 40px;
            margin-top: 60px;
        }

        .case-study-card {
            background-color: var(--white);
            border-radius: 16px;
            overflow: hidden;
            box-shadow: var(--shadow-medium);
            transition: all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            position: relative;
        }

        .case-study-card:hover {
            transform: translateY(-15px);
            box-shadow: var(--shadow-heavy);
        }

        .case-study-header {
            height: 220px;
            overflow: hidden;
            position: relative;
        }

        .case-study-header::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 60%;
            background: linear-gradient(transparent, rgba(0,0,0,0.7));
        }

        .case-study-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.8s ease;
        }

        .case-study-card:hover .case-study-image {
            transform: scale(1.1);
        }

        .case-study-icon {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 70px;
            height: 70px;
            background: linear-gradient(135deg, var(--light-red), var(--soft-red));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.8rem;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            z-index: 2;
            transition: transform 0.5s ease;
        }

        .case-study-card:hover .case-study-icon {
            transform: scale(1.1) rotate(10deg);
        }

        .case-study-content {
            padding: 35px;
            position: relative;
        }

        .case-study-content h3 {
            margin-bottom: 1.2rem;
            color: var(--primary-blue);
            font-size: 1.5rem;
        }

        .case-study-result {
            display: inline-block;
            background: linear-gradient(135deg, var(--light-red), var(--soft-red));
            color: var(--white);
            padding: 12px 25px;
            border-radius: 30px;
            font-weight: 700;
            margin-top: 20px;
            box-shadow: 0 8px 20px rgba(255, 107, 107, 0.4);
            font-size: 1.1rem;
        }

        .case-study-stats {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
            padding-top: 30px;
            border-top: 1px solid var(--medium-gray);
        }

        .stat {
            text-align: center;
            flex: 1;
        }

        .stat-value {
            font-size: 2rem;
            font-weight: 800;
            color: var(--primary-blue);
            line-height: 1;
            text-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .stat-label {
            font-size: 0.9rem;
            color: var(--text-color);
            margin-top: 8px;
            font-weight: 500;
        }

        /* Enhanced Global Presence */
        .global-presence {
            background: linear-gradient(135deg, var(--primary-blue), #152642);
            color: var(--white);
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .global-presence::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" width="100" height="100" opacity="0.05"><defs><pattern id="dots" width="10" height="10" patternUnits="userSpaceOnUse"><circle cx="1" cy="1" r="1" fill="%23ffffff"/></pattern></defs><rect width="100" height="100" fill="url(%23dots)"/></svg>');
        }

        .global-stats {
            display: flex;
            justify-content: space-around;
            margin-top: 50px;
            flex-wrap: wrap;
            position: relative;
            z-index: 1;
        }

        .global-stat {
            padding: 20px;
            transition: transform 0.3s ease;
        }

        .global-stat:hover {
            transform: translateY(-10px);
        }

        .global-stat-value {
            font-size: 3.5rem;
            font-weight: 800;
            margin-bottom: 10px;
            text-shadow: 0 2px 10px rgba(0,0,0,0.2);
        }

        .global-stat-label {
            font-size: 1.1rem;
            opacity: 0.9;
        }

        /* Enhanced Contact Section */
        .contact-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 70px;
        }

        .contact-form {
            background-color: var(--white);
            padding: 45px;
            border-radius: 16px;
            box-shadow: var(--shadow-medium);
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            margin-bottom: 12px;
            font-weight: 600;
            color: var(--primary-blue);
        }

        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 16px;
            border: 1px solid var(--medium-gray);
            border-radius: 8px;
            font-family: 'Inter', sans-serif;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-group input:focus,
        .form-group textarea:focus,
        .form-group select:focus {
            outline: none;
            border-color: var(--light-blue);
            box-shadow: 0 0 0 3px rgba(74, 118, 176, 0.2);
        }

        .form-group textarea {
            height: 150px;
            resize: vertical;
        }

        .contact-info {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .contact-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 35px;
            transition: transform 0.3s ease;
        }

        .contact-item:hover {
            transform: translateX(10px);
        }

        .contact-icon {
            font-size: 1.8rem;
            color: var(--light-red);
            margin-right: 20px;
            margin-top: 5px;
        }

        .map-container {
            height: 300px;
            border-radius: 16px;
            overflow: hidden;
            margin-top: 30px;
            box-shadow: var(--shadow-medium);
            transition: transform 0.5s ease;
        }

        .map-container:hover {
            transform: translateY(-5px);
        }

        /* Enhanced Footer */
        footer {
            background: linear-gradient(135deg, var(--primary-blue), #152642);
            color: var(--white);
            padding: 80px 0 40px;
            position: relative;
            overflow: hidden;
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 50px;
            margin-bottom: 50px;
            position: relative;
            z-index: 1;
        }

        .footer-logo {
            font-weight: 800;
            font-size: 1.9rem;
            margin-bottom: 1.5rem;
        }

        .footer-logo span {
            color: var(--light-red);
        }

        .footer-links h3 {
            color: var(--white);
            margin-bottom: 1.8rem;
            font-size: 1.3rem;
        }

        .footer-links ul {
            list-style: none;
        }

        .footer-links ul li {
            margin-bottom: 12px;
        }

        .footer-links ul li a {
            color: rgba(255, 255, 255, 0.8);
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .footer-links ul li a:hover {
            color: var(--light-red);
            transform: translateX(5px);
        }

        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 25px;
        }

        .social-links a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 45px;
            height: 45px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            color: var(--white);
            text-decoration: none;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        .social-links a:hover {
            background: var(--light-red);
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .copyright {
            text-align: center;
            padding-top: 40px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            font-size: 0.9rem;
            color: rgba(255, 255, 255, 0.7);
            position: relative;
            z-index: 1;
        }

        /* Enhanced Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fade-in {
            opacity: 0;
            transform: translateY(40px);
            transition: opacity 0.8s ease, transform 0.8s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* Responsive Design */
        @media (max-width: 1100px) {
            h1 {
                font-size: 3rem;
            }
            
            h2 {
                font-size: 2.5rem;
            }
        }

        @media (max-width: 992px) {
            .about-content,
            .contact-container {
                grid-template-columns: 1fr;
            }
            
            .about-image {
                order: -1;
            }
            
            .global-stat-value {
                font-size: 3rem;
            }
        }

        @media (max-width: 768px) {
            .mobile-menu-btn {
                display: block;
            }
            
            nav {
                position: fixed;
                top: 80px;
                left: 0;
                width: 100%;
                background-color: var(--white);
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
                transform: translateY(-100%);
                opacity: 0;
                visibility: hidden;
                transition: all 0.3s ease;
            }
            
            nav.active {
                transform: translateY(0);
                opacity: 1;
                visibility: visible;
            }
            
            nav ul {
                flex-direction: column;
                padding: 30px;
            }
            
            nav ul li {
                margin: 0 0 20px 0;
            }
            
            .hero h1 {
                font-size: 2.8rem;
            }
            
            section {
                padding: 80px 0;
            }
            
            .global-stats {
                flex-direction: column;
                gap: 30px;
            }
        }

        @media (max-width: 576px) {
            .hero h1 {
                font-size: 2.4rem;
            }
            
            .hero p {
                font-size: 1.2rem;
            }
            
            .services-grid,
            .case-studies-grid {
                grid-template-columns: 1fr;
            }
            
            .case-study-stats {
                flex-direction: column;
                gap: 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <a href="#" class="logo"><i class="fas fa-calculator"></i>Accounting <span>Mate</span></a>
            <button class="mobile-menu-btn">☰</button>
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#case-studies">Case Studies</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="container">
            <div class="hero-content">
                <h1>Premium Financial Excellence for Modern Businesses</h1>
                <p>Accounting Mate delivers world-class financial services with enhanced visual design and sophisticated user experience to help businesses optimize performance and drive strategic growth.</p>
                <a href="#contact" class="btn">Schedule a Premium Consultation</a>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="section-light">
        <div class="container">
            <div class="about-content">
                <div class="about-text">
                    <h2>About Accounting Mate</h2>
                    <p>Founded in 2012, Accounting Mate has evolved into a premium financial services firm with a focus on design excellence and client experience. Our mission is built on three core principles: Precision, Integrity, and Strategic Insight.</p>
                    <p>With a diverse team of certified professionals and design experts, we deliver accounting services that not only meet the highest standards but also provide an exceptional user experience through thoughtful design and intuitive interfaces.</p>
                    <a href="#services" class="btn btn-outline">Explore Our Premium Services</a>
                </div>
                <div class="about-image">
                    <img src="https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Accounting Mate team">
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services">
        <div class="container">
            <h2 class="section-title-center text-center">Our Premium Services</h2>
            <p class="text-center">Comprehensive financial solutions with enhanced design and user experience.</p>
            
            <div class="services-grid">
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-globe-americas"></i></div>
                    <h3>International Tax Strategy</h3>
                    <p>Global tax planning and compliance services that navigate complex international regulations while optimizing your tax position across jurisdictions.</p>
                </div>
                
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-chart-line"></i></div>
                    <h3>Financial Reporting</h3>
                    <p>Accurate and timely financial statements compliant with IFRS and GAAP standards, providing clear insights into your global business performance.</p>
                </div>
                
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-hand-holding-usd"></i></div>
                    <h3>Multinational Bookkeeping</h3>
                    <p>Comprehensive financial record-keeping across multiple currencies and regulatory environments, ensuring accuracy and compliance worldwide.</p>
                </div>
                
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-user-tie"></i></div>
                    <h3>Global Business Advisory</h3>
                    <p>Strategic financial guidance for international expansion, cross-border transactions, and optimizing operations in diverse economic environments.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Case Studies Section -->
    <section id="case-studies" class="case-studies-section">
        <div class="container">
            <h2 class="section-title-center text-center">Premium Success Stories</h2>
            <p class="text-center">Real examples showing measurable results with enhanced visual presentation.</p>
            
            <div class="case-studies-grid">
                <div class="case-study-card fade-in">
                    <div class="case-study-header">
                        <!-- Small Business Tax Optimization Image -->
                        <img src="https://images.unsplash.com/photo-1560472354-b33ff0c44a43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Small business owner reviewing financial documents" class="case-study-image">
                        <div class="case-study-icon">
                            <i class="fas fa-store"></i>
                        </div>
                    </div>
                    <div class="case-study-content">
                        <h3>Small Business Tax Optimization</h3>
                        <p>Comprehensive tax planning for a local retail business identified significant deductions and credits previously overlooked, resulting in substantial savings and improved cash flow.</p>
                        <div class="case-study-result">Reduced tax liability by 28%</div>
                        <div class="case-study-stats">
                            <div class="stat">
                                <div class="stat-value">28%</div>
                                <div class="stat-label">Tax Savings</div>
                            </div>
                            <div class="stat">
                                <div class="stat-value">$15K</div>
                                <div class="stat-label">Annual Savings</div>
                            </div>
                            <div class="stat">
                                <div class="stat-value">6</div>
                                <div class="stat-label">Months</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="case-study-card fade-in">
                    <div class="case-study-header">
                        <img src="https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&auto=format&fit=crop&w=700&q=80" alt="Restaurant finances" class="case-study-image">
                        <div class="case-study-icon">
                            <i class="fas fa-utensils"></i>
                        </div>
                    </div>
                    <div class="case-study-content">
                        <h3>Restaurant Financial Turnaround</h3>
                        <p>Implemented new accounting systems and financial controls for a struggling restaurant chain, optimizing operations and increasing profitability.</p>
                        <div class="case-study-result">Increased profitability by 35% in 6 months</div>
                        <div class="case-study-stats">
                            <div class="stat">
                                <div class="stat-value">35%</div>
                                <div class="stat-label">Profit Increase</div>
                            </div>
                            <div class="stat">
                                <div class="stat-value">$42K</div>
                                <div class="stat-label">Monthly Revenue</div>
                            </div>
                            <div class="stat">
                                <div class="stat-value">6</div>
                                <div class="stat-label">Months</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="case-study-card fade-in">
                    <div class="case-study-header">
                        <img src="https://images.unsplash.com/photo-1556761175-b413da4baf72?ixlib=rb-4.0.3&auto=format&fit=crop&w=700&q=80" alt="Tech startup" class="case-study-image">
                        <div class="case-study-icon">
                            <i class="fas fa-rocket"></i>
                        </div>
                    </div>
                    <div class="case-study-content">
                        <h3>Startup Financial Foundation</h3>
                        <p>Established robust accounting systems and financial processes for a rapidly growing tech startup, enabling better decision-making and investor confidence.</p>
                        <div class="case-study-result">Secured $2M in additional funding</div>
                        <div class="case-study-stats">
                            <div class="stat">
                                <div class="stat-value">$2M</div>
                                <div class="stat-label">Funding</div>
                            </div>
                            <div class="stat">
                                <div class="stat-value">12</div>
                                <div class="stat-label">Investors</div>
                            </div>
                            <div class="stat">
                                <div class="stat-value">3</div>
                                <div class="stat-label">Months</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Global Presence -->
    <section class="global-presence">
        <div class="container">
            <h2 class="text-center">Our Premium Footprint</h2>
            <p class="text-center">Serving clients worldwide with enhanced expertise and design-forward solutions.</p>
            
            <div class="global-stats">
                <div class="global-stat">
                    <div class="global-stat-value">15+</div>
                    <div class="global-stat-label">Countries</div>
                </div>
                <div class="global-stat">
                    <div class="global-stat-value">600+</div>
                    <div class="global-stat-label">Clients</div>
                </div>
                <div class="global-stat">
                    <div class="global-stat-value">99%</div>
                    <div class="global-stat-label">Client Retention</div>
                </div>
                <div class="global-stat">
                    <div class="global-stat-value">$3B+</div>
                    <div class="global-stat-label">Assets Managed</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <h2 class="section-title-center text-center">Contact Our Premium Team</h2>
            <p class="text-center">Ready to experience premium financial services? Get in touch with our accounting experts.</p>
            
            <div class="contact-container">
                <div class="contact-form">
                    <form id="contactForm">
                        <div class="form-group">
                            <label for="name">Full Name</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="company">Company</label>
                            <input type="text" id="company" name="company" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="service">Service Interest</label>
                            <select id="service" name="service">
                                <option value="tax">International Tax Strategy</option>
                                <option value="reporting">Financial Reporting</option>
                                <option value="bookkeeping">Multinational Bookkeeping</option>
                                <option value="advisory">Global Business Advisory</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="message">How can we help you?</label>
                            <textarea id="message" name="message" required></textarea>
                        </div>
                        <button type="submit" class="btn">Send Message</button>
                    </form>
                </div>
                
                <div class="contact-info">
                    <div class="contact-item">
                        <div class="contact-icon"><i class="fas fa-map-marker-alt"></i></div>
                        <div>
                            <h3>Premium Headquarters</h3>
                            <p>123 Financial District, Suite 500<br>New York, NY 10005, USA</p>
                        </div>
                    </div>
                    
                    <div class="contact-item">
                        <div class="contact-icon"><i class="fas fa-phone"></i></div>
                        <div>
                            <h3>Premium Phone</h3>
                            <p>+1 (212) 555-7890</p>
                        </div>
                    </div>
                    
                    <div class="contact-item">
                        <div class="contact-icon"><i class="fas fa-envelope"></i></div>
                        <div>
                            <h3>Email</h3>
                            <p>premium@accountingmate.com</p>
                        </div>
                    </div>
                    
                    <div class="map-container">
                        <!-- In a real implementation, you would embed a Google Map here -->
                        <div style="width:100%;height:100%;background:linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));display:flex;align-items:center;justify-content:center;color:white;flex-direction:column;">
                            <i class="fas fa-map-marked-alt" style="font-size: 3.5rem; margin-bottom: 15px;"></i>
                            <p style="font-size: 1.2rem;">Premium Office Location</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-container">
                <div class="footer-about">
                    <div class="footer-logo">Accounting <span>Mate</span></div>
                    <p>Your trusted premium partner in financial excellence and business growth with enhanced design.</p>
                    <div class="social-links">
                        <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                
                <div class="footer-links">
                    <h3>Premium Offices</h3>
                    <ul>
                        <li>New York, USA</li>
                        <li>London, UK</li>
                        <li>Singapore</li>
                        <li>Toronto, Canada</li>
                        <li>Sydney, Australia</li>
                    </ul>
                </div>
                
                <div class="footer-links">
                    <h3>Services</h3>
                    <ul>
                        <li><a href="#services">International Tax</a></li>
                        <li><a href="#services">Financial Reporting</a></li>
                        <li><a href="#services">Multinational Bookkeeping</a></li>
                        <li><a href="#services">Global Business Advisory</a></li>
                    </ul>
                </div>
                
                <div class="footer-links">
                    <h3>Certifications</h3>
                    <ul>
                        <li>CPA Certified</li>
                        <li>ACCA Global</li>
                        <li>Chartered Accountants</li>
                        <li>IFRS Specialists</li>
                    </ul>
                </div>
            </div>
            
            <div class="copyright">
                <p>&copy; 2023 Accounting Mate. All rights reserved. Premium financial services with enhanced design.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile menu toggle
        const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
        const nav = document.querySelector('nav');
        
        mobileMenuBtn.addEventListener('click', () => {
            nav.classList.toggle('active');
        });
        
        // Close mobile menu when clicking on a link
        const navLinks = document.querySelectorAll('nav a');
        navLinks.forEach(link => {
            link.addEventListener('click', () => {
                nav.classList.remove('active');
            });
        });
        
        // Scroll animations
        const fadeElements = document.querySelectorAll('.fade-in');
        
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                }
            });
        }, {
            threshold: 0.1
        });
        
        fadeElements.forEach(element => {
            observer.observe(element);
        });
        
        // Form submission
        const contactForm = document.getElementById('contactForm');
        
        contactForm.addEventListener('submit', (e) => {
            e.preventDefault();
            
            // In a real implementation, you would send the form data to a server
            alert('Thank you for your message! Our premium team will contact you within 24 hours.');
            contactForm.reset();
        });

        // Header scroll effect
        window.addEventListener('scroll', () => {
            const header = document.querySelector('header');
            if (window.scrollY > 50) {
                header.style.background = 'rgba(255, 255, 255, 0.98)';
                header.style.boxShadow = '0 5px 30px rgba(0, 0, 0, 0.15)';
            } else {
                header.style.background = 'rgba(255, 255, 255, 0.95)';
                header.style.boxShadow = '0 2px 30px rgba(0, 0, 0, 0.1)';
            }
        });
    </script>
</body>
</html>
