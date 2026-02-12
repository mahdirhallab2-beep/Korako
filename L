<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <title>ملعبنا | نظام حجز المباريات</title>
    <!-- خط عربي واضح وبسيط -->
    <link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@400;500;700;800&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Tajawal', sans-serif;
        }

        body {
            background: #f0f7fa;
            color: #1e3c42;
            padding: 12px;
            min-height: 100vh;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
        }

        /* ألوان عملية وباردة - واضحة وسهلة للعين */
        .bg-white {
            background: white;
        }
        
        .text-primary {
            color: #0a6e79;
        }
        
        .bg-primary {
            background: #0a6e79;
            color: white;
        }
        
        .bg-success {
            background: #1e7e6c;
            color: white;
        }
        
        .bg-warning {
            background: #b5624b;
            color: white;
        }
        
        .bg-info {
            background: #4298a0;
            color: white;
        }
        
        .bg-light {
            background: #e3f0f2;
        }
        
        .border-round {
            border-radius: 20px;
        }

        /* تصميم البطاقات */
        .card {
            background: white;
            border-radius: 24px;
            padding: 20px 18px;
            margin-bottom: 20px;
            box-shadow: 0 4px 12px rgba(0,50,60,0.08);
            border: 1px solid #d0e6ea;
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 18px;
        }

        h1, h2, h3 {
            font-weight: 700;
            color: #0a5b63;
        }
        
        h1 {
            font-size: 1.9rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        h2 {
            font-size: 1.5rem;
        }
        
        h3 {
            font-size: 1.2rem;
        }

        /* النماذج */
        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
            margin-bottom: 12px;
        }

        .form-group {
            flex: 1 1 160px;
        }

        label {
            display: block;
            font-size: 0.85rem;
            font-weight: 600;
            color: #1f6a73;
            margin-bottom: 4px;
            margin-right: 8px;
        }

        input, select {
            width: 100%;
            padding: 12px 16px;
            border: 1.5px solid #cde1e5;
            border-radius: 40px;
            font-size: 0.95rem;
            background: white;
            color: #144f57;
            font-weight: 500;
            outline: none;
            transition: 0.15s;
        }

        input:focus, select:focus {
            border-color: #0f8a96;
            box-shadow: 0 0 0 3px rgba(10,110,121,0.1);
        }

        /* أزرار عملية */
        .btn {
            border: none;
            padding: 12px 24px;
            border-radius: 50px;
            font-weight: 700;
            font-size: 1rem;
            cursor: pointer;
            transition: 0.1s;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            width: 100%;
            color: white;
            background: #0f8a96;
            border-bottom: 4px solid #09616a;
        }

        .btn:active {
            transform: translateY(4px);
            border-bottom-width: 0px;
        }

        .btn-sm {
            padding: 8px 18px;
            font-size: 0.9rem;
            width: auto;
        }

        .btn-success {
            background: #1e8a7a;
            border-bottom-color: #14635a;
        }

        .btn-warning {
            background: #b85c45;
            border-bottom-color: #8a4534;
        }

        .btn-outline {
            background: white;
            color: #0a6e79;
            border: 2px solid #0a6e79;
            border-bottom-width: 4px;
            border-bottom-color: #0a6e79;
        }

        .badge {
            background: #0a6e79;
            color: white;
            padding: 6px 16px;
            border-radius: 40px;
            font-size: 0.8rem;
            font-weight: 700;
        }

        /* جدول الملاعب - عمودي وبسيط */
        .schedule-day {
            background: #f2fafc;
            border-radius: 20px;
            padding: 16px;
            margin-bottom: 12px;
            border: 1px solid #cbe3e7;
        }

        .day-title {
            font-weight: 800;
            color: #0a6e79;
            background: #d7f0f3;
            display: inline-block;
            padding: 6px 22px;
            border-radius: 40px;
            margin-bottom: 14px;
            font-size: 1.1rem;
        }

        .hours-container {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .hour-item {
            background: #e7f3f5;
            border-radius: 40px;
            padding: 8px 12px;
            font-size: 0.85rem;
            font-weight: 600;
            color: #0e5a63;
            display: inline-flex;
            align-items: center;
            gap: 5px;
            border: 1px solid #b7dce0;
            flex: 0 0 auto;
        }

        .hour-booked {
            background: #edd7d0;
            color: #612e24;
            border-color: #c9998a;
        }

        .hour-ready {
            background: #b7dfe3;
            color: #09505a;
            border-color: #69aeb6;
        }

        .invite-badge {
            background: #0f6e78;
            color: white;
            padding: 2px 12px;
            border-radius: 30px;
            font-size: 0.7rem;
            font-weight: 700;
            margin-right: 5px;
        }

        /* بطاقات الفئات */
        .category-grid {
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .category-box {
            background: #f5fbfc;
            border-radius: 20px;
            padding: 16px;
            border: 1px solid #c6e4e9;
        }

        .category-header {
            background: #0a6e79;
            color: white;
            padding: 10px 18px;
            border-radius: 40px;
            font-weight: 700;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 14px;
        }

        .player-list {
            max-height: 220px;
            overflow-y: auto;
        }

        .player-row {
            background: white;
            border-radius: 40px;
            padding: 10px 16px;
            margin-bottom: 8px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border: 1px solid #cde1e5;
            color: #10555e;
            font-weight: 600;
        }

        .player-day {
            background: #d2e9ed;
            padding: 4px 16px;
            border-radius: 40px;
            font-size: 0.75rem;
            font-weight: 700;
        }

        /* لوحة الإدارة */
        .admin-panel {
            background: white;
            border-radius: 24px;
            padding: 20px;
            margin-top: 20px;
            border: 2px solid #0a6e79;
        }

        .admin-table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 16px;
            font-size: 0.85rem;
        }

        .admin-table th {
            background: #0a6e79;
            color: white;
            padding: 12px 4px;
            font-weight: 600;
        }

        .admin-table td {
            padding: 10px 4px;
            border-bottom: 1px solid #d3e7eb;
            text-align: center;
        }

        .hidden {
            display: none;
        }

        .message {
            background: #0a6e79;
            color: white;
            padding: 14px 20px;
            border-radius: 60px;
            text-align: center;
            font-weight: 600;
            margin-bottom: 15px;
        }

        /* احصائيات */
        .stats {
            display: flex;
            justify-content: space-around;
            background: white;
            border-radius: 60px;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #bbe0e5;
        }

        .stat {
            display: flex;
            align-items: center;
            gap: 6px;
            color: #0a5b63;
            font-weight: 700;
        }

        /* للهاتف */
        @media (max-width: 600px) {
            .form-group {
                flex: 1 1 100%;
            }
            h1 { font-size: 1.7rem; }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- رأس الصفحة مع إحصائيات -->
        <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px;">
            <h1><i class="fas fa-futbol" style="color: #0a6e79;"></i> ملعبنا</h1>
            <div class="stats">
                <span class="stat"><i class="fas fa-users"></i> <span id="totalPlayers">0</span></span>
                <span class="stat"><i class="fas fa-calendar"></i> <span id="totalMatches">0</span></span>
                <span class="stat"><i class="fas fa-clock"></i> <span id="readyMatches">0</span></span>
            </div>
        </div>

        <!-- بطاقة تسجيل لاعب جديد -->
        <div class="card">
            <div class="card-header">
                <h2><i class="fas fa-user-plus" style="color: #0a6e79;"></i> تسجيل لاعب</h2>
                <span class="badge">يكتمل 12</span>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label>الاسم الكامل</label>
                    <input type="text" id="fullName" placeholder="أدخل الاسم" autocomplete="off">
                </div>
                <div class="form-group">
                    <label>العمر</label>
                    <input type="number" id="age" placeholder="العمر" min="5" max="100">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label>الفئة المطلوبة</label>
                    <select id="targetCategory">
                        <option value="12-15">12 - 15 سنة</option>
                        <option value="15-18">15 - 18 سنة</option>
                        <option value="18-24">18 - 24 سنة</option>
                        <option value="24-35">24 - 35 سنة</option>
                        <option value="35plus">35 فما فوق</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>اليوم</label>
                    <select id="matchDay">
                        <option value="السبت">السبت</option>
                        <option value="الأحد">الأحد</option>
                        <option value="الإثنين">الإثنين</option>
                        <option value="الثلاثاء">الثلاثاء</option>
                        <option value="الأربعاء">الأربعاء</option>
                        <option value="الخميس">الخميس</option>
                        <option value="الجمعة">الجمعة</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>الساعة</label>
                    <select id="matchHour"></select>
                </div>
            </div>
            
            <button class="btn" id="registerPlayerBtn">
                <i class="fas fa-check-circle"></i> تسجيل اللاعب
            </button>
        </div>

        <!-- بطاقة حجز مباراة جاهزة بكود 6 أرقام -->
        <div class="card" style="background: #f6fbfc;">
            <div class="card-header">
                <h3><i class="fas fa-bolt" style="color: #0a6e79;"></i> مباراة جاهزة (12 لاعب)</h3>
                <span class="badge" style="background: #0f8a96;">كود 6 أرقام</span>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label>اليوم</label>
                    <select id="readyDay">
                        <option value="السبت">السبت</option>
                        <option value="الأحد">الأحد</option>
                        <option value="الإثنين">الإثنين</option>
                        <option value="الثلاثاء">الثلاثاء</option>
                        <option value="الأربعاء">الأربعاء</option>
                        <option value="الخميس">الخميس</option>
                        <option value="الجمعة">الجمعة</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>الساعة</label>
                    <select id="readyHour"></select>
                </div>
                <div class="form-group">
                    <label>كود 6 أرقام</label>
                    <input type="number" id="readyCode" placeholder="مثال: 123456" min="100000" max="999999" oninput="this.value = this.value.slice(0,6)">
                </div>
            </div>
            
            <button class="btn btn-success" id="bookReadyMatchBtn">
                <i class="fas fa-calendar-plus"></i> حجز مباراة جاهزة
            </button>
        </div>

        <!-- جدول الملاعب العمودي -->
        <div class="card">
            <h2 style="margin-bottom: 15px;"><i class="fas fa-table"></i> جدول الملاعب</h2>
            <div id="verticalScheduleContainer"></div>
            <div style="display: flex; gap: 15px; margin-top: 20px; flex-wrap: wrap; justify-content: center;">
                <span style="background: #e7f3f5; padding: 5px 18px; border-radius: 30px;"><i class="fas fa-circle" style="color: #4298a0;"></i> فارغ</span>
                <span style="background: #edd7d0; padding: 5px 18px; border-radius: 30px;"><i class="fas fa-circle" style="color: #b5624b;"></i> مباراة عادية</span>
                <span style="background: #b7dfe3; padding: 5px 18px; border-radius: 30px;"><i class="fas fa-circle" style="color: #0f8a96;"></i> مباراة جاهزة</span>
                <span style="background: #0a6e79; color: white; padding: 5px 18px; border-radius: 30px;"><i class="fas fa-check"></i> تمت الدعوة</span>
            </div>
        </div>

        <!-- الفئات العمرية وترتيب اللاعبين المنتظرين -->
        <div class="card">
            <h2 style="margin-bottom: 15px;"><i class="fas fa-users-between-lines"></i> قوائم الانتظار</h2>
            <div id="categoriesContainer" class="category-grid"></div>
        </div>

        <!-- قسم الإدارة - يظهر بعد الضغط على زر الإدارة -->
        <div class="admin-panel">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 15px;">
                <h3 style="margin: 0;"><i class="fas fa-cog"></i> لوحة الإدارة</h3>
                <button id="toggleAdminBtn" class="btn-sm btn-outline" style="width: auto;">
                    <i class="fas fa-lock"></i> إدارة
                </button>
            </div>
            
            <div id="adminContent" class="hidden">
                <div style="display: flex; gap: 10px; flex-wrap: wrap; align-items: flex-end; margin-bottom: 20px;">
                    <div style="flex: 1;">
                        <label>كود الإدارة</label>
                        <input type="password" id="adminCode" placeholder="****" maxlength="4">
                    </div>
                    <div>
                        <button class="btn-sm btn-success" id="unlockAdminBtn">فتح</button>
                    </div>
                </div>
                <div id="adminPanelContainer"></div>
            </div>
        </div>

        <!-- رسائل النظام -->
        <div id="messageContainer" style="margin-top: 15px;"></div>
    </div>

    <script>
        (function() {
            "use strict";

            // -------------------- الإعدادات الأساسية --------------------
            const HOURS = [];
            for (let i = 8; i <= 22; i++) HOURS.push(i + ':00');
            
            const DAYS = ['السبت', 'الأحد', 'الإثنين', 'الثلاثاء', 'الأربعاء', 'الخميس', 'الجمعة'];
            const CATS = ['12-15', '15-18', '18-24', '24-35', '35plus'];

            // -------------------- LocalStorage --------------------
            let players = JSON.parse(localStorage.getItem('players_v4')) || [];
            let matches = JSON.parse(localStorage.getItem('matches_v4')) || [];

            function saveAll() {
                localStorage.setItem('players_v4', JSON.stringify(players));
                localStorage.setItem('matches_v4', JSON.stringify(matches));
                updateStats();
            }

            // -------------------- تحديث الإحصائيات --------------------
            function updateStats() {
                document.getElementById('totalPlayers').innerText = players.length;
                document.getElementById('totalMatches').innerText = matches.length;
                document.getElementById('readyMatches').innerText = matches.filter(m => m.type === 'ready').length;
            }

            // -------------------- ملء خيارات الساعات --------------------
            function fillHours() {
                ['matchHour', 'readyHour'].forEach(id => {
                    let sel = document.getElementById(id);
                    if (sel) {
                        sel.innerHTML = '';
                        HOURS.forEach(h => {
                            let opt = document.createElement('option');
                            opt.value = h;
                            opt.textContent = h;
                            sel.appendChild(opt);
                        });
                    }
                });
            }

            // -------------------- عرض الرسائل --------------------
            function showMsg(text, success = true) {
                let msgDiv = document.getElementById('messageContainer');
                msgDiv.innerHTML = `<div class="message" style="background: ${success ? '#0a6e79' : '#b5624b'};">${text}</div>`;
                setTimeout(() => msgDiv.innerHTML = '', 3000);
            }

            // -------------------- التحقق من العمر --------------------
            function isValidAge(age, cat) {
                age = parseInt(age);
                switch(cat) {
                    case '12-15': return age >= 12 && age <= 15;
                    case '15-18': return age >= 15 && age <= 18;
                    case '18-24': return age >= 18 && age <= 24;
                    case '24-35': return age >= 24 && age <= 35;
                    case '35plus': return age >= 35;
                    default: return false;
                }
            }

            // -------------------- تسجيل لاعب --------------------
            function register() {
                let name = document.getElementById('fullName').value.trim();
                let age = document.getElementById('age').value.trim();
                let cat = document.getElementById('targetCategory').value;
                let day = document.getElementById('matchDay').value;
                let hour = document.getElementById('matchHour').value;

                if (!name || !age) return showMsg('أدخل الاسم والعمر', false);
                if (parseInt(age) < 5) return showMsg('العمر غير صحيح', false);
                if (!isValidAge(age, cat)) return showMsg('العمر لا يتناسب مع الفئة', false);

                players.push({
                    id: Date.now() + Math.random(),
                    name, age: parseInt(age), targetCategory: cat, day, hour
                });
                saveAll();

                checkMatchFull(cat, day, hour);
                renderAll();
                showMsg(`✅ تم تسجيل ${name}`);

                document.getElementById('fullName').value = '';
                document.getElementById('age').value = '';
            }

            // -------------------- اكتمال 12 لاعب --------------------
            function checkMatchFull(cat, day, hour) {
                let list = players.filter(p => p.targetCategory === cat && p.day === day && p.hour === hour);
                if (list.length >= 12) {
                    if (matches.some(m => m.day === day && m.hour === hour)) {
                        players = players.filter(p => !list.slice(0,12).map(p => p.id).includes(p.id));
                        saveAll();
                        showMsg('⚠️ الساعة محجوزة، تم إزالة 12 لاعب', false);
                        return;
                    }

                    matches.push({
                        id: 'M' + Date.now() + Math.random(),
                        day, hour, type: 'normal', category: cat,
                        players: list.slice(0,12).map(p => p.name),
                        code: null
                    });

                    players = players.filter(p => !list.slice(0,12).map(p => p.id).includes(p.id));
                    saveAll();
                    showMsg(`🎉 اكتمل 12! حجز مباراة ${day} ${hour}`);
                }
            }

            // -------------------- حجز مباراة جاهزة --------------------
            function bookReady() {
                let day = document.getElementById('readyDay').value;
                let hour = document.getElementById('readyHour').value;
                let code = document.getElementById('readyCode').value.trim();

                if (!code || code.length !== 6 || isNaN(code)) 
                    return showMsg('كود 6 أرقام مطلوب', false);
                if (matches.some(m => m.day === day && m.hour === hour))
                    return showMsg('الساعة محجوزة بالفعل', false);

                matches.push({
                    id: 'R' + Date.now() + Math.random(),
                    day, hour, type: 'ready', category: 'جاهزة', code,
                    players: ['مباراة جاهزة']
                });
                saveAll();
                renderAll();
                showMsg(`✅ مباراة جاهزة بكود ${code}`);
                document.getElementById('readyCode').value = '';
            }

            // -------------------- حذف مباراة جاهزة بالكود --------------------
            function deleteReady(code) {
                if (!confirm('حذف المباراة الجاهزة؟')) return;
                let index = matches.findIndex(m => m.type === 'ready' && m.code == code);
                if (index !== -1) {
                    matches.splice(index, 1);
                    saveAll();
                    renderAll();
                    showMsg('🗑️ تم الحذف');
                } else {
                    showMsg('❌ كود غير صحيح', false);
                }
            }

            // -------------------- حذف كل المباريات --------------------
            function deleteAllMatches() {
                if (confirm('مسح جميع المباريات؟')) {
                    matches = [];
                    saveAll();
                    renderAll();
                    showMsg('✅ تم مسح الكل');
                }
            }

            // -------------------- جدول الملاعب العمودي --------------------
            function renderSchedule() {
                let container = document.getElementById('verticalScheduleContainer');
                if (!container) return;
                let html = '';
                
                DAYS.forEach(day => {
                    html += `<div class="schedule-day">`;
                    html += `<span class="day-title"><i class="fas fa-calendar-alt"></i> ${day}</span>`;
                    html += `<div class="hours-container">`;
                    
                    HOURS.forEach(hour => {
                        let match = matches.find(m => m.day === day && m.hour === hour);
                        let cls = 'hour-item';
                        let content = hour;
                        
                        if (match) {
                            if (match.type === 'ready') {
                                cls += ' hour-ready';
                                content += ' 🔵 جاهزة';
                            } else {
                                cls += ' hour-booked';
                                content += ' 🔴 مباراة';
                                content += ' <span class="invite-badge"><i class="fas fa-check"></i> تمت</span>';
                            }
                        } else {
                            content += ' ✔️';
                        }
                        
                        html += `<div class="${cls}">${content}</div>`;
                    });
                    
                    html += `</div></div>`;
                });
                container.innerHTML = html;
            }

            // -------------------- بطاقات الفئات واللاعبين --------------------
            function renderCategories() {
                let container = document.getElementById('categoriesContainer');
                if (!container) return;
                let html = '';
                
                CATS.forEach(cat => {
                    let catPlayers = players.filter(p => p.targetCategory === cat);
                    html += `<div class="category-box">`;
                    html += `<div class="category-header"><span><i class="fas fa-flag"></i> فئة ${cat}</span> <span style="background: #146f7a; padding: 4px 18px; border-radius: 40px;">${catPlayers.length} لاعب</span></div>`;
                    
                    if (catPlayers.length === 0) {
                        html += `<p style="color: #0f6872; text-align: center; padding: 10px;">لا يوجد لاعبين</p>`;
                    } else {
                        html += `<div class="player-list">`;
                        catPlayers.sort((a,b) => (a.day + a.hour).localeCompare(b.day + b.hour)).forEach(p => {
                            html += `<div class="player-row">
                                        <span><i class="fas fa-user"></i> ${p.name} (${p.age})</span>
                                        <span class="player-day"><i class="fas fa-clock"></i> ${p.day} ${p.hour}</span>
                                    </div>`;
                        });
                        html += `</div>`;
                    }
                    html += `</div>`;
                });
                container.innerHTML = html;
            }

            // -------------------- لوحة الإدارة --------------------
            function renderAdmin() {
                let container = document.getElementById('adminPanelContainer');
                if (!container) return;
                
                if (matches.length === 0) {
                    container.innerHTML = '<p style="text-align: center; padding: 20px; background: #eef7f9; border-radius: 40px;">🚫 لا توجد مباريات</p>';
                    return;
                }

                let html = '<table class="admin-table"><thead><tr><th>اليوم</th><th>الساعة</th><th>النوع</th><th>الكود</th><th>حذف</th></tr></thead><tbody>';
                
                matches.forEach(m => {
                    html += `<tr>
                        <td>${m.day}</td>
                        <td>${m.hour}</td>
                        <td>${m.type === 'ready' ? '🔵 جاهزة' : '🔴 عادية'}</td>
                        <td style="direction: ltr;">${m.code || '--'}</td>`;
                    
                    if (m.type === 'ready' && m.code) {
                        html += `<td><button class="btn-sm btn-warning" style="width: auto; padding: 6px 16px;" onclick="deleteReadyCode('${m.code}')"><i class="fas fa-trash"></i> حذف</button></td>`;
                    } else {
                        html += `<td><span style="color: #0f6872;"><i class="fas fa-ban"></i> لا</span></td>`;
                    }
                    html += `</tr>`;
                });
                
                html += '</tbody></table>';
                html += `<div style="margin-top: 20px; text-align: left;">
                            <button class="btn-sm btn-warning" style="width: auto;" onclick="deleteAllMatchesFromAdmin()"><i class="fas fa-calendar-times"></i> مسح كل المباريات</button>
                        </div>`;
                
                container.innerHTML = html;
            }

            // -------------------- رندر كامل --------------------
            function renderAll() {
                renderSchedule();
                renderCategories();
                updateStats();
            }

            // -------------------- دوال عامة للـ onclick --------------------
            window.deleteReadyCode = function(code) {
                deleteReady(code);
                renderAdmin();
            };

            window.deleteAllMatchesFromAdmin = function() {
                deleteAllMatches();
                renderAdmin();
            };

            // -------------------- تهيئة الأحداث --------------------
            function init() {
                fillHours();
                renderAll();
                updateStats();

                document.getElementById('registerPlayerBtn').addEventListener('click', register);
                document.getElementById('bookReadyMatchBtn').addEventListener('click', bookReady);
                
                // زر الإدارة
                document.getElementById('toggleAdminBtn').addEventListener('click', function() {
                    document.getElementById('adminContent').classList.toggle('hidden');
                });

                // فتح الإدارة بالكود
                document.getElementById('unlockAdminBtn').addEventListener('click', function() {
                    if (document.getElementById('adminCode').value === '****') {
                        renderAdmin();
                        showMsg('🔓 تم فتح الإدارة');
                    } else {
                        showMsg('❌ كود خاطئ', false);
                    }
                });
            }

            init();
        })();
    </script>
</body>
</html>
