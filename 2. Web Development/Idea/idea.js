// AutoPay Website JavaScript
document.addEventListener('DOMContentLoaded', function() {
    // Mobile Navigation Toggle
    const hamburger = document.querySelector('.hamburger');
    const navLinks = document.querySelector('.nav-links');
    const navbar = document.querySelector('.navbar');
    const navLinksElements = document.querySelectorAll('.nav-link');

    // Toggle mobile menu
    hamburger.addEventListener('click', function() {
        navLinks.classList.toggle('active');
        hamburger.classList.toggle('active');
    });

    // Close mobile menu when clicking on links
    navLinksElements.forEach(link => {
        link.addEventListener('click', () => {
            navLinks.classList.remove('active');
            hamburger.classList.remove('active');
        });
    });

    // Smooth Scrolling for navigation links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });

    // Navbar on scroll effect
    let lastScroll = 0;
    window.addEventListener('scroll', () => {
        const currentScroll = window.pageYOffset;
        
        if (currentScroll > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }

        // Hide/show navbar on scroll
        if (currentScroll > lastScroll && currentScroll > 100) {
            navbar.classList.add('nav-hidden');
        } else {
            navbar.classList.remove('nav-hidden');
        }
        
        lastScroll = currentScroll;
    });

    // Animate elements on scroll
    const observerOptions = {
        threshold: 0.1,
        rootMargin: "0px 0px -100px 0px"
    };

    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    }, observerOptions);

    // Observe elements for animation
    const animatedElements = document.querySelectorAll('.benefit-card, .step, .security-feature');
    animatedElements.forEach(el => observer.observe(el));

    // Form validation and submission
    const contactForm = document.querySelector('.contact-form');
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Get form data
            const formData = {
                name: this.querySelector('input[type="text"]').value,
                email: this.querySelector('input[type="email"]').value,
                subject: this.querySelectorAll('input[type="text"]')[1].value,
                message: this.querySelector('textarea').value
            };

            // Validate form
            if (!formData.name || !formData.email || !formData.message) {
                showNotification('Please fill in all required fields', 'error');
                return;
            }

            // Email validation
            if (!isValidEmail(formData.email)) {
                showNotification('Please enter a valid email address', 'error');
                return;
            }

            // Simulate form submission (replace with actual API call)
            showNotification('Message sent successfully!', 'success');
            this.reset();
        });
    }

    // Email validation function
    function isValidEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    // Notification function
    function showNotification(message, type) {
        const notification = document.createElement('div');
        notification.className = `notification ${type}`;
        notification.textContent = message;
        
        document.body.appendChild(notification);
        
        setTimeout(() => {
            notification.classList.add('show');
        }, 10);
        
        setTimeout(() => {
            notification.classList.remove('show');
            setTimeout(() => {
                document.body.removeChild(notification);
            }, 300);
        }, 3000);
    }

    // Demo video placeholder click handler
    const videoPlaceholder = document.querySelector('.video-placeholder');
    if (videoPlaceholder) {
        videoPlaceholder.addEventListener('click', function() {
            showNotification('Demo video coming soon!', 'info');
        });
    }

    // CTA buttons click handlers
    const downloadAppBtn = document.querySelector('.cta .btn-primary');
    if (downloadAppBtn) {
        downloadAppBtn.addEventListener('click', function(e) {
            e.preventDefault();
            showNotification('App download will be available soon!', 'info');
        });
    }

    // Biometric scan animation on hover
    const biometricScan = document.querySelector('.biometric-scan');
    if (biometricScan) {
        biometricScan.addEventListener('mouseenter', function() {
            this.classList.add('active');
        });
        
        biometricScan.addEventListener('mouseleave', function() {
            this.classList.remove('active');
        });
    }

    // Add ripple effect to buttons
    const buttons = document.querySelectorAll('.btn');
    buttons.forEach(button => {
        button.addEventListener('click', function(e) {
            const ripple = document.createElement('span');
            ripple.classList.add('ripple');
            this.appendChild(ripple);

            const x = e.clientX - e.target.offsetLeft;
            const y = e.clientY - e.target.offsetTop;

            ripple.style.left = `${x}px`;
            ripple.style.top = `${y}px`;

            setTimeout(() => {
                ripple.remove();
            }, 600);
        });
    });

    // Counter animation for statistics (if needed)
    function animateCounter(element, target, duration = 2000) {
        let start = 0;
        const increment = target / (duration / 16);
        
        const timer = setInterval(() => {
            start += increment;
            element.textContent = Math.floor(start);
            
            if (start >= target) {
                element.textContent = target;
                clearInterval(timer);
            }
        }, 16);
    }

    // Typing effect for hero title (optional enhancement)
    const heroTitle = document.querySelector('.hero-title');
    if (heroTitle) {
        const text = heroTitle.textContent;
        heroTitle.textContent = '';
        let index = 0;
        
        function typeWriter() {
            if (index < text.length) {
                heroTitle.textContent += text.charAt(index);
                index++;
                setTimeout(typeWriter, 50);
            }
        }
        
        // Uncomment to enable typing effect
        // typeWriter();
    }

    // Lazy loading for images (optional)
    const images = document.querySelectorAll('img[data-src]');
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.removeAttribute('data-src');
                imageObserver.unobserve(img);
            }
        });
    });

    images.forEach(img => imageObserver.observe(img));

    // Focus trap for modal (if needed later)
    function trapFocus(element) {
        const focusableElements = element.querySelectorAll(
            'a[href], button, textarea, input[type="text"], input[type="radio"], input[type="checkbox"], select'
        );
        const firstFocusableElement = focusableElements[0];
        const lastFocusableElement = focusableElements[focusableElements.length - 1];

        element.addEventListener('keydown', function(e) {
            const isTabPressed = e.key === 'Tab' || e.keyCode === 9;

            if (!isTabPressed) {
                return;
            }

            if (e.shiftKey) {
                if (document.activeElement === firstFocusableElement) {
                    lastFocusableElement.focus();
                    e.preventDefault();
                }
            } else {
                if (document.activeElement === lastFocusableElement) {
                    firstFocusableElement.focus();
                    e.preventDefault();
                }
            }
        });
    }

    // Performance optimization - debounce scroll event
    function debounce(func, wait) {
        let timeout;
        return function executedFunction(...args) {
            const later = () => {
                clearTimeout(timeout);
                func(...args);
            };
            clearTimeout(timeout);
            timeout = setTimeout(later, wait);
        };
    }

    // Optimize scroll event handler
    const optimizedScroll = debounce(() => {
        // Add any scroll-dependent functionality here
    }, 10);

    window.addEventListener('scroll', optimizedScroll, { passive: true });

    // Initialize AOS (Animate On Scroll) if needed
    // AOS.init();

    console.log('AutoPay website initialized successfully!');
});