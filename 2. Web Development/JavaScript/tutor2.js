function showContent(topic) {
    const contentDiv = document.getElementById('content');
    let content = '';

    switch (topic) {
        case 'html':
            content = `
                <h2>HTML</h2>
                <p>-->HTML is the standard markup language for creating web pages.</p>
                <p>-->It describes the structure of a webpage using markup.HTML is the standard markup language for web pages and web applications.
With HTML you can create your Own Website.</br></br>
<b>HTML stands for HYPERTEXT MARKUP LANGUAGE.</b></br>
This markup tells a web browser how to display the text, images and other form of multimedia on a webpage.
</p>
<p> <b>HTML elements are represented by tags</b></br>

# <b>Container Tag/ Pair Tag:</b> The first tag in a pair is the start tag, the second tag is the end tag. The end tag is written like the start tag, with a forward slash before the tag name.
Start and end tags are also called opening tags and closing tags. For ex <b> and </b>

Empty Tag: Only opening tag is used.</br> For ex br tag or hr tag </P>
<p><b><u>What do I need to create HTML?</u></b></P>
<p>A. Computer</br>
B. Text or HTML editor: For ex, HTML editors are Dreamweaver, SeaMonkey, Coffee Cup, Text Pad etc. </br>
C. The text editors are include Notepad(for windows), Pico(for Linux), or Simple text/ text Edit/Text.</br>
D. Web Browser.For Ex Internet Explorer of Firefox
</br>E. HTML VERSIONS are :</br>
1. HTML 1991</br>
2. HTML 2.0 1995</br>
3.HTML 3.2 1997</br>
4. HTML 4.01 1999</br>
5. XHTML 2000</br>
6. HTML 5 2014</p>
<p><u>HTML is a markup language used for structuring and presenting content on the World Wide Web. </u></br></br>
<b>The most interesting new API’s in HTML 5 are:</b></br>
A. HTML Geolocation (Provides web applications with access to geographical location data about the user’s device.)</br>
B. Drag and Drop (Supports dragging and dropping items within and between browser windows.)</br>
C. Local Storage </br>
D. Application Cache (Provides programs with secure access to the device’s file system.)</br>
E. Web Workers (Allows JavaScript to execute scripts in the background.)</br>
F. Server Sent Events (Allows the server to push data to the browser without the browser needing to request it.)</br>
G. Audio & Video- You can embed audio or video on your webpages without resorting to third party plugins</br>
H. Canvas- This supports two dimensional drawing surface that you can program with java script</p></br>

            `;
            break;
        case 'css':
            content = `
                <h2>CSS</h2>
                CSS is the language we use to style a Web page.
CSS is a language used to describe the presentation of a web page, including colors, layout, and fonts. It allows you to apply styles to HTML elements to create visually appealing websites.
</br>What is CSS?</br>
CSS stands for Cascading Style Sheets</br>
CSS describes how HTML elements are to be displayed on screen, paper, or in other media</br>
CSS saves a lot of work. It can control the layout of multiple web pages all at once</br>
External style sheets are stored in CSS files</br>
<h3>CSS Syntax</h3>
Three Ways to Insert CSS</br>
There are three ways of inserting a style sheet:
• EXTERNAL CSS</br>
• INTERNAL CSS</br>
• INLINE CSS</br>
<h3>External CSS</h3>
An external style sheet is ideal when the style is applied to many pages. With an external style sheet, you canchange the look of an entire Web site by changing one file. Each page must link to the style sheet using the <link>tag.</br> The <link> tag goes inside the head section:
<head>
<link rel="stylesheet" href="mystyle.css">
</head></br>
<h3>Internal Style Sheet</h3>
</br>An internal style sheet should be used when a single document has a unique style. You define internal styles in the head section of an HTML page, by using the <style> tag, like this:
</br><head>
<style> body {
background-color: linen;
}
h1 {
color: maroon; margin-left: 40px;
}
</style>
</head></br>
<h3>Inline Styles</h3>
</br>An inline style may be used to apply a unique style for a single element.</br>
To use inline styles, add the style attribute to the relevant element. The style attribute can contain any CSS property.</br>
This is a paragraph.
            `;
            break;
        case 'javascript':
            content = `
                <p><h2>JavaScript</h2>
                JavaScript is a programming language that allows you to implement complex features on web pages.</p>
                <p>It is an essential part of web applications.</p>
                <p><b>JavaScript</b> is a programming language that is widely used in web development. It is a client-side scripting language, 
                which means that it is executed on the client side (in a web browser) rather than on the server side. JavaScript is used
                 to create interactive web pages and is an essential component of modern web development. It is a high-level, dynamically 
                 typed language that is interpreted, which means that it is not compiled into machine code before it is run. JavaScript is
                  used to add functionality to websites, such as handling user events (such as clicks and form submissions), animating page 
                  elements, and making asynchronous requests to servers. It is a versatile language that can be used for a wide range of 
                  applications, from simple scripts that add simple interactivity to websites to complex single-page applications.</p>
                  <p><u>JavaScript is a versatile programming language that plays a crucial role in web development. Here are some of the primary uses of JavaScript:</u>
</br><h5>1. Client-Side Scripting</h5>
Interactivity: JavaScript allows developers to create interactive web pages. This includes functionalities like dropdown menus, modal dialogs, image sliders, and form validation.
</br>Dynamic Content: It enables the manipulation of HTML and CSS, allowing for dynamic updates to the content of a web page without requiring a full page reload (e.g., changing text, styles, or images based on user input).
<h5>2. Form Validation</h5>
JavaScript is commonly used to validate user input in forms before sending it to the server. This can help catch errors and improve user experience by providing immediate feedback.
<h5>3. Event Handling</h5>
JavaScript can respond to user actions such as clicks, key presses, mouse movements, and more. This allows for a more engaging experience where the web page can react to user interactions.
<h5>4. Asynchronous Communication (AJAX)</h5>
JavaScript can make asynchronous requests to the server using AJAX (Asynchronous JavaScript and XML). This allows web applications to send and receive data without reloading the page, enabling smoother user experiences (e.g., loading new content, submitting forms, etc.).
<h5>5. Manipulating the Document Object Model (DOM)</h5>JavaScript can access and manipulate the DOM, which represents the structure of a web page. This allows developers to change the content, structure, and style of a web page dynamically.
<h5>6. Browser APIs</h5>
JavaScript can interact with various browser APIs to access features like:
</br>Geolocation: Accessing the user's geographical location.
</br>Web Storage: Storing data in the browser (localStorage and sessionStorage).
</br>Canvas API: Drawing graphics and animations on the web page.
</br>WebSockets: Establishing a persistent connection for real-time communication.
<h5>7. Single Page Applications (SPAs)</h5>
JavaScript frameworks and libraries (like React, Angular, and Vue.js) enable the development of SPAs, where the entire application is loaded on a single page, and content is updated dynamically without full page refreshes.
<h5>8. Server-Side Development</h5>
With the advent of Node.js, JavaScript can also be used for server-side programming. This allows developers to build scalable network applications and APIs using JavaScript.
<h5>9. Mobile App Development</h5>
JavaScript can be used to develop mobile applications using frameworks like React Native, Ionic, and Apache Cordova, allowing for cross-platform app development.
<h5>10. Game Development</h5>
JavaScript can be used to create browser-based games using libraries like Phaser or Three.js for 2D and 3D graphics.
<h5>11. Automation and Scripting</h5>
JavaScript can be used for automating tasks in web browsers, such as scraping data from web pages or automating repetitive tasks with tools like Puppeteer or Selenium.
<h5>12. Progressive Web Applications (PWAs)</h5>
JavaScript is essential for building PWAs, which combine the best of web and mobile apps. They can work offline, send push notifications, and provide a native app-like experience.</P>
            `;
            break;
        case 'backend':
            content = `
                <h2>Backend Development</h2>
                <p>Backend development refers to the server-side of an application and everything that communicates between the database and the browser.</p>
                <p><b>Backend development</b>  refers to the server-side part of web development that focuses on how a website or application functions, as opposed to its appearance (which is the domain of frontend development). It involves the creation and management of the server, database, and application logic that power the application.</br> Here’s a detailed overview of backend development:
</br>Key Components of Backend Development
<h5>Server:</h5>

The server is the hardware or software that provides services to clients (e.g., web browsers). It processes requests from clients, runs applications, and sends responses back to the client.
Common server environments include Apache, Nginx, and Microsoft IIS.
<h5>Database:</h5>

Databases are used to store, retrieve, and manage data. They can be relational (SQL) or non-relational (NoSQL).
Popular databases include MySQL, PostgreSQL, MongoDB, and SQLite.
Backend developers design database schemas, write queries, and ensure data integrity and security.
<h5>Application Logic:</h5>

This refers to the code that defines the application's behavior and processes requests. It involves handling business logic, data processing, and communication with the database.
Backend developers use programming languages such as Python, Java, Ruby, PHP, Node.js (JavaScript), and C# to implement application logic.
<h5>APIs (Application Programming Interfaces):</h5>

APIs allow different software applications to communicate with each other. They define the methods and data formats that applications can use to request and exchange information.
RESTful APIs and GraphQL are common approaches for building APIs in backend development.
<h5>Frameworks:</h5>

Backend frameworks provide tools and libraries that simplify the development process by offering pre-built components and structures.
Popular backend frameworks include:
</br>1.Express.js (Node.js)
</br>2.Django (Python)
</br>3.Flask (Python)
</br>4.Ruby on Rails (Ruby)
</br>5.Spring (Java)
</br>6.Responsibilities of a Backend Developer
<h5>7.Server-Side Logic:</h5>

Writing the code that handles requests from the client, processes them, and sends back the appropriate responses.
<h5>Database Management:</h5>

Designing and managing the database schema, writing queries to interact with the database, and ensuring data security and integrity.
<h5>API Development:</h5>

Creating and maintaining APIs that allow the frontend and other services to interact with the backend.
<h5>Authentication and Authorization:</h5>

Implementing user authentication (verifying user identity) and authorization (determining user permissions) to secure the application.
<h5>Performance Optimization:</h5>

Ensuring that the application runs efficiently, which may involve optimizing database queries, caching data, and scaling the server infrastructure.
<h5>Security:</h5>

Implementing security measures to protect the application from vulnerabilities such as SQL injection, cross-site scripting (XSS), and data breaches.
<h5>Testing and Debugging:</h5>

Writing tests to ensure the application behaves as expected and debugging issues that arise.
<h5>Deployment and Maintenance:</h5>

Deploying the application to a server and performing regular maintenance to ensure its continued operation and performance.
</br>A.Technologies and Tools Commonly Used in Backend Development
</br>B.Programming Languages: Python, Java, Ruby, PHP, JavaScript (Node.js), C#, Go, etc.
</br>C.Frameworks: Express.js, Django, Flask, Ruby on Rails, Spring, ASP.NET, etc.
</br>D.Databases: MySQL, PostgreSQL, MongoDB, Microsoft SQL Server, Redis, etc.
</br>E.Version Control: Git (for tracking changes and collaborating with other developers).
</br>F.Containerization and Virtualization: Docker, Kubernetes (for managing application deployment and scalability).
</br>G.Cloud Services: AWS, Google Cloud Platform, Microsoft Azure (for hosting applications and databases).</p>
            `;
            break;
        default:
            content = `
                <h2>Welcome to Full Stack Development</h2>
                <p>Select a topic from the menu to learn more.</p>
            `;
    }

    contentDiv.innerHTML = content;
}