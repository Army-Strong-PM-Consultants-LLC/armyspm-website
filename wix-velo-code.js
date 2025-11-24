/**
 * Wix Velo Custom Code for ASPM Agent System Website
 * 
 * Instructions:
 * 1. In Wix Editor, go to Dev Mode (or Settings > Custom Code)
 * 2. Add this code to your site's custom code section
 * 3. This code enhances the site with smooth scrolling, form handling, and dynamic features
 */

import wixWindow from 'wix-window';
import wixLocation from 'wix-location';
import wixData from 'wix-data';

// Smooth scrolling for anchor links
$w.onReady(function () {
    // Initialize smooth scrolling
    initSmoothScrolling();
    
    // Initialize form handlers
    initFormHandlers();
    
    // Initialize dynamic content
    initDynamicContent();
});

/**
 * Smooth scrolling for navigation links
 */
function initSmoothScrolling() {
    $w("#navigationLinks").onClick((event) => {
        const targetId = event.target.id;
        const targetElement = $w(`#${targetId}`);
        
        if (targetElement) {
            targetElement.scrollIntoView({ behavior: 'smooth' });
        }
    });
}

/**
 * Handle contact form submission
 */
function initFormHandlers() {
    $w("#contactForm").onSubmit((event) => {
        event.preventDefault();
        
        const formData = {
            name: $w("#nameInput").value,
            email: $w("#emailInput").value,
            subject: $w("#subjectInput").value,
            message: $w("#messageInput").value,
            timestamp: new Date()
        };
        
        // Save to Wix Data (if you have a collection set up)
        // wixData.save("ContactSubmissions", formData)
        //     .then(() => {
        //         $w("#successMessage").show();
        //         $w("#contactForm").reset();
        //     })
        //     .catch((error) => {
        //         console.error("Error saving form:", error);
        //         $w("#errorMessage").show();
        //     });
        
        // For now, just show success message
        $w("#successMessage").show();
        setTimeout(() => {
            $w("#successMessage").hide();
        }, 5000);
        
        $w("#contactForm").reset();
    });
}

/**
 * Initialize dynamic content loading
 */
function initDynamicContent() {
    // Add any dynamic content loading here
    // For example, loading agent cards dynamically
    
    // Example: Load agent data from a collection
    // wixData.query("Agents")
    //     .find()
    //     .then((results) => {
    //         const agents = results.items;
    //         // Populate agent cards dynamically
    //     });
}

/**
 * Newsletter subscription handler
 */
export function subscribeNewsletter(email) {
    // Save newsletter subscription
    const subscription = {
        email: email,
        subscribed: true,
        timestamp: new Date()
    };
    
    // wixData.save("NewsletterSubscriptions", subscription)
    //     .then(() => {
    //         return { success: true, message: "Successfully subscribed!" };
    //     })
    //     .catch((error) => {
    //         return { success: false, message: "Error subscribing. Please try again." };
    //     });
    
    return { success: true, message: "Successfully subscribed!" };
}

/**
 * Track page views (optional analytics)
 */
export function trackPageView(pageName) {
    // Add analytics tracking here
    // Example: Google Analytics, Wix Analytics, etc.
    console.log(`Page viewed: ${pageName}`);
}

/**
 * Handle external link clicks
 */
$w("#externalLinks").onClick((event) => {
    const url = event.target.url;
    if (url && url.startsWith('http')) {
        wixWindow.openLightbox(url);
    }
});

