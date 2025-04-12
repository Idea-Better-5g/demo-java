<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colorful Dashboard</title>
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
        
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, var(--primary), var(--accent2));
            color: var(--light);
            min-height: 100vh;
        }
        
        .container {
            display: grid;
            grid-template-columns: 250px 1fr;
            grid-template-rows: 80px 1fr;
            min-height: 100vh;
        }
        
        header {
            grid-column: 1 / 3;
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 30px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .logo {
            font-size: 24px;
            font-weight: bold;
            color: white;
        }
        
        .user-info {
            display: flex;
            align-items: center;
            gap: 15px;
        }
        
        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: var(--accent1);
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }
        
        aside {
            background-color: rgba(0, 0, 0, 0.2);
            padding: 30px 20px;
        }
        
        .nav-menu {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        
        .nav-item {
            margin-bottom: 15px;
        }
        
        .nav-link {
            color: var(--light);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 12px 15px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }
        
        .nav-link:hover, .nav-link.active {
            background-color: rgba(255, 255, 255, 0.2);
        }
        
        .nav-link i {
            font-size: 20px;
        }
        
        main {
            padding: 30px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
        }
        
        .card {
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        
        .card:hover {
            transform: translateY(-5px);
        }
        
        .card-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 15px;
        }
        
        .card-title {
            margin: 0;
            font-size: 18px;
        }
        
        .card-icon {
            width: 50px;
            height: 50px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
        }
        
        .card-value {
            font-size: 32px;
            font-weight: bold;
            margin: 10px 0;
        }
        
        .card-footer {
            font-size: 14px;
            opacity: 0.8;
        }
        
        .chart-card {
            grid-column: span 2;
            height: 300px;
        }
        
        /* Color classes for cards */
        .bg-purple { background-color: var(--primary); }
        .bg-pink { background-color: var(--accent1); }
        .bg-teal { background-color: var(--accent2); }
        .bg-yellow { background-color: var(--accent3); color: var(--dark); }
        
        /* Responsive adjustments */
        @media (max-width: 768px) {
            .container {
                grid-template-columns: 1fr;
            }
            
            aside {
                display: none;
            }
            
            .chart-card {
                grid-column: span 1;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="container">
        <header>
            <div class="logo">ColorDash</div>
            <div class="user-info">
                <span>Welcome, Admin</span>
                <div class="user-avatar">A</div>
            </div>
        </header>
        
        <aside>
            <ul class="nav-menu">
                <li class="nav-item">
                    <a href="#" class="nav-link active">
                        <i class="fas fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-chart-line"></i>
                        <span>Analytics</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-users"></i>
                        <span>Users</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-shopping-cart"></i>
                        <span>Products</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-cog"></i>
                        <span>Settings</span>
                    </a>
                </li>
            </ul>
        </aside>
        
        <main>
            <div class="card bg-purple">
                <div class="card-header">
                    <h3 class="card-title">Total Revenue</h3>
                    <div class="card-icon">
                        <i class="fas fa-dollar-sign"></i>
                    </div>
                </div>
                <div class="card-value">$24,580</div>
                <div class="card-footer">+12% from last month</div>
            </div>
            
            <div class="card bg-pink">
                <div class="card-header">
                    <h3 class="card-title">New Users</h3>
                    <div class="card-icon">
                        <i class="fas fa-user-plus"></i>
                    </div>
                </div>
                <div class="card-value">1,254</div>
                <div class="card-footer">+8.5% from last month</div>
            </div>
            
            <div class="card bg-teal">
                <div class="card-header">
                    <h3 class="card-title">Conversion Rate</h3>
                    <div class="card-icon">
                        <i class="fas fa-percentage"></i>
                    </div>
                </div>
                <div class="card-value">3.6%</div>
                <div class="card-footer">+0.8% from last month</div>
            </div>
            
            <div class="card bg-yellow">
                <div class="card-header">
                    <h3 class="card-title">Active Projects</h3>
                    <div class="card-icon">
                        <i class="fas fa-tasks"></i>
                    </div>
                </div>
                <div class="card-value">18</div>
                <div class="card-footer">5 completed this week</div>
            </div>
            
            <div class="card chart-card">
                <div class="card-header">
                    <h3 class="card-title">Performance Overview</h3>
                    <div class="card-icon">
                        <i class="fas fa-chart-bar"></i>
                    </div>
                </div>
                <div style="height: 220px; display: flex; align-items: center; justify-content: center; color: rgba(255,255,255,0.5);">
                    [Chart would be displayed here]
                </div>
            </div>
            
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Recent Activity</h3>
                    <div class="card-icon">
                        <i class="fas fa-bell"></i>
                    </div>
                </div>
                <div style="min-height: 200px; color: rgba(255,255,255,0.8);">
                    <p>• New user registration: John Doe</p>
                    <p>• Order #4567 shipped</p>
                    <p>• Payment received for invoice #789</p>
                    <p>• System update completed</p>
                </div>
            </div>
            
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Quick Actions</h3>
                    <div class="card-icon">
                        <i class="fas fa-bolt"></i>
                    </div>
                </div>
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px; padding: 10px 0;">
                    <button style="padding: 10px; border: none; border-radius: 8px; background-color: var(--accent1); color: white; cursor: pointer;">
                        Add User
                    </button>
                    <button style="padding: 10px; border: none; border-radius: 8px; background-color: var(--accent2); color: white; cursor: pointer;">
                        Create Report
                    </button>
                    <button style="padding: 10px; border: none; border-radius: 8px; background-color: var(--primary); color: white; cursor: pointer;">
                        Send Message
                    </button>
                    <button style="padding: 10px; border: none; border-radius: 8px; background-color: var(--secondary); color: white; cursor: pointer;">
                        View Analytics
                    </button>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
