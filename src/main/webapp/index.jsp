<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to FaceBook status</title>
    <style>
        :root {
            --primary: #6c5ce7;
            --secondary: #a29bfe;
            --accent1: #fd79a8;
            --accent2: #00cec9;
            --accent3: #ffeaa7;
            --dark: #2d3436;
            --light: #f5f6fa;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, var(--primary), var(--accent2));
            color: white;
            min-height: 100vh;
            overflow-x: hidden;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }
        
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 0;
        }
        
        .logo {
            font-size: 2rem;
            font-weight: bold;
            background: linear-gradient(to right, var(--accent3), var(--accent1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        .auth-buttons {
            display: flex;
            gap: 1rem;
        }
        
        .btn {
            padding: 0.8rem 1.5rem;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            border: none;
            font-size: 1rem;
        }
        
        .btn-login {
            background: transparent;
            color: white;
            border: 2px solid white;
        }
        
        .btn-login:hover {
            background: white;
            color: var(--primary);
        }
        
        .btn-signup {
            background: white;
            color: var(--primary);
        }
        
        .btn-signup:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        
        .hero {
            display: flex;
            align-items: center;
            min-height: 70vh;
            gap: 3rem;
            padding: 2rem 0;
        }
        
        .hero-content {
            flex: 1;
        }
        
        .hero-title {
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            line-height: 1.2;
        }
        
        .hero-subtitle {
            font-size: 1.2rem;
            opacity: 0.9;
            margin-bottom: 2rem;
            max-width: 500px;
        }
        
        .dashboard-preview {
            flex: 1;
            position: relative;
            perspective: 1000px;
        }
        
        .dashboard-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 1.5rem;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
            transform: rotateY(-15deg) rotateX(10deg);
            transition: all 0.5s ease;
            max-width: 500px;
        }
        
        .dashboard-card:hover {
            transform: rotateY(-5deg) rotateX(5deg);
        }
        
        .card-row {
            display: flex;
            gap: 1rem;
            margin-bottom: 1rem;
        }
        
        .metric-card {
            flex: 1;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            padding: 1rem;
            min-height: 120px;
            display: flex;
            flex-direction: column;
        }
        
        .metric-card:nth-child(1) {
            background: var(--accent1);
        }
        
        .metric-card:nth-child(2) {
            background: var(--accent2);
        }
        
        .metric-card:nth-child(3) {
            background: var(--accent3);
            color: var(--dark);
        }
        
        .metric-value {
            font-size: 2rem;
            font-weight: bold;
            margin-top: auto;
        }
        
        .metric-label {
            font-size: 0.9rem;
            opacity: 0.9;
        }
        
        .chart-placeholder {
            height: 150px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: rgba(255, 255, 255, 0.7);
            margin-top: 1rem;
        }
        
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin: 5rem 0;
        }
        
        .feature-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 2rem;
            transition: all 0.3s ease;
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
            background: rgba(255, 255, 255, 0.2);
        }
        
        .feature-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            background: linear-gradient(to right, var(--accent1), var(--primary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        .feature-title {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }
        
        .feature-desc {
            opacity: 0.8;
            line-height: 1.6;
        }
        
        @media (max-width: 768px) {
            .hero {
                flex-direction: column;
                text-align: center;
            }
            
            .hero-subtitle {
                margin-left: auto;
                margin-right: auto;
            }
            
            .dashboard-preview {
                margin-top: 3rem;
                width: 100%;
            }
            
            .dashboard-card {
                transform: none;
            }
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="container">
        <header>
            <div class="logo">FaceBook Users Tracking </div>
            <div class="auth-buttons">
                <button class="btn btn-login">Login</button>
                <button class="btn btn-signup">Sign Up</button>
            </div>
        </header>
        
        <section class="hero">
            <div class="hero-content">
                <h1 class="hero-title"> FaceBook Analytics Dashboard</h1>
                <p class="hero-subtitle">
                    Get powerful insights with our colorful, intuitive dashboard. 
                    Monitor your data in real-time with stunning visuals.
                </p>
                <div style="display: flex; gap: 1rem; margin-top: 2rem;">
                    <button class="btn btn-signup" style="padding: 1rem 2rem;">Get Started</button>
                    <button class="btn btn-login" style="padding: 1rem 2rem;">Demo</button>
                </div>
            </div>
            
            <div class="dashboard-preview">
                <div class="dashboard-card">
                    <div class="card-row">
                        <div class="metric-card">
                            <span class="metric-label">Revenue</span>
                            <span class="metric-value">$204K</span>
                        </div>
                        <div class="metric-card">
                            <span class="metric-label">Users</span>
                            <span class="metric-value">20.2K</span>
                        </div>
                    </div>
                    <div class="card-row">
                        <div class="metric-card">
                            <span class="metric-label">Conversion</span>
                            <span class="metric-value">10.6%</span>
                        </div>
                    </div>
                    <div class="chart-placeholder">
                        <i class="fas fa-chart-line"></i> Interactive Chart
                    </div>
                </div>
            </div>
        </section>
        
        <section class="features">
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-tachometer-alt"></i>
                </div>
                <h3 class="feature-title">Real-time Analytics</h3>
                <p class="feature-desc">
                    Get up-to-the-minute data visualizations that help you make informed decisions quickly.
                </p>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-palette"></i>
                </div>
                <h3 class="feature-title">FaceBook Dashboards</h3>
                <p class="feature-desc">
                    Personalize your dashboard with drag-and-drop widgets and color schemes.
                </p>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-bell"></i>
                </div>
                <h3 class="feature-title">Smart Alerts on FaceBook</h3>
                <p class="feature-desc">
                    Receive notifications when important metrics change or reach thresholds.
                </p>
            </div>
        </section>
    </div>
</body>
</html>
