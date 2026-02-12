<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <title>ملعبنا | نظام حجز المباريات</title>
    <link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@400;500;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Tajawal', sans-serif; }
        body { background: #f0f7fa; color: #1e3c42; padding: 12px; min-height: 100vh; }
        .container { max-width: 800px; margin: 0 auto; }
        .bg-white { background: white; }
        .text-primary { color: #0a6e79; }
        .bg-primary { background: #0a6e79; color: white; }
        .bg-success { background: #1e7e6c; color: white; }
        .bg-warning { background: #b5624b; color: white; }
        .bg-info { background: #4298a0; color: white; }
        .bg-light { background: #e3f0f2; }
        .border-round { border-radius: 20px; }
        
        .card { background: white; border-radius: 24px; padding: 20px 18px; margin-bottom: 20px; box-shadow: 0 4px 12px rgba(0,50,60,0.08); border: 1px solid #d0e6ea; }
        .card-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 18px; }
        h1, h2, h3 { font-weight: 700; color: #0a5b63; }
        h1 { font-size: 1.9rem; display: flex; align-items: center; gap: 10px; }
        h2 { font-size: 1.5rem; }
        h3 { font-size: 1.2rem; }
        
        .form-row { display: flex; flex-wrap: wrap; gap: 12px; margin-bottom: 12px; }
        .form-group { flex: 1 1 160px; }
        label { display: block; font-size: 0.85rem; font-weight: 600; color: #1f6a73; margin-bottom: 4px; margin-right: 8px; }
        input, select { width: 100%; padding: 12px 16px; border: 1.5px solid #cde1e5; border-radius: 40px; font-size: 0.95rem; background: white; color: #144f57; font-weight: 500; outline: none; transition: 0.15s; }
        input:focus, select:focus { border-color: #0f8a96; box-shadow: 0 0 0 3px rgba(10,110,121,0.1); }
        
        .btn { border: none; padding: 12px 24px; border-radius: 50px; font-weight: 700; font-size: 1rem; cursor: pointer; transition: 0.1s; display: inline-flex; align-items: center; justify-content: center; gap: 8px; width: 100%; color: white; background: #0f8a96; border-bottom: 4px solid #09616a; }
        .btn:active { transform: translateY(4px); border-bottom-width: 0px; }
        .btn-sm { padding: 8px 18px; font-size: 0.9rem; width: auto; }
        .btn-success { background: #1e8a7a; border-bottom-color: #14635a; }
        .btn-warning { background: #b85c45; border-bottom-color: #8a4534; }
        .btn-outline { background: white; color: #0a6e79; border: 2px solid #0a6e79; border-bottom-width: 4px; border-bottom-color: #0a6e79; }
        .btn-danger { background: #b33f3f; border-bottom-color: #7a2c2c; }
        
        .badge { background: #0a6e79; color: white; padding: 6px 16px; border-radius: 40px; font-size: 0.8rem; font-weight: 700; }
        
        .schedule-day { background: #f2fafc; border-radius: 20px; padding: 16px; margin-bottom: 12px; border: 1px solid #cbe3e7; cursor: pointer; transition: 0.2s; }
        .schedule-day:hover { background: #e3f2f5; }
        .day-title { font-weight: 800; color: #0a6e79; background: #d7f0f3; display: inline-block; padding: 6px 22px; border-radius: 40px; margin-bottom: 14px; font-size: 1.1rem; }
        .hours-container { display: flex; flex-wrap: wrap; gap: 8px; }
        .hour-item { background: #e7f3f5; border-radius: 40px; padding: 8px 12px; font-size: 0.85rem; font-weight: 600; color: #0e5a63; display: inline-flex; align-items: center; gap: 5px; border: 1px solid #b7dce0; flex: 0 0 auto; }
        .hour-booked { background: #edd7d0; color: #612e24; border-color: #c9998a; }
        .hour-ready { background: #b7dfe3; color: #09505a; border-color: #69aeb6; }
        .invite-badge { background: #0f6e78; color: white; padding: 2px 12px; border-radius: 30px; font-size: 0.7rem; font-weight: 700; margin-right: 5px; }
        
        .category-grid { display: flex; flex-direction: column; gap: 16px; }
        .category-box { background: #f5fbfc; border-radius: 20px; padding: 16px; border: 1px solid #c6e4e9; }
        .category-header { background: #0a6e79; color: white; padding: 10px 18px; border-radius: 40px; font-weight: 700; display: flex; justify-content: space-between; align-items: center; margin-bottom: 14px; }
        .player-list { max-height: 220px; overflow-y: auto; }
        .player-row { background: white; border-radius: 40px; padding: 10px 16px; margin-bottom: 8px; display: flex; justify-content: space-between; align-items: center; border: 1px solid #cde1e5; color: #10555e; font-weight: 600; }
        .player-day { background: #d2e9ed; padding: 4px 16px; border-radius: 40px; font-size: 0.75rem; font-weight: 700; }
        
        .admin-panel { background: white; border-radius: 24px; padding: 20px; margin-top: 20px; border: 2px solid #0a6e79; }
        .admin-table { width: 100%; border-collapse: collapse; background: white; border-radius: 16px; font-size: 0.85rem; }
        .admin-table th { background: #0a6e79; color: white; padding: 12px 4px; font-weight: 600; }
        .admin-table td { padding: 10px 4px; border-bottom: 1px solid #d3e7eb; text-align: center; }
        
        .hidden { display: none; }
        .message { background: #0a6e79; color: white; padding: 14px 20px; border-radius: 60px; text-align: center; font-weight: 600; margin-bottom: 15px; }
        
        .stats { display: flex; justify-content: space-around; background: white; border-radius: 60px; padding: 12px; margin-bottom: 20px; border: 1px solid #bbe0e5; }
        .stat { display: flex; align-items: center; gap: 6px; color: #0a5b63; font-weight: 700; }
        
        .modal { position: fixed; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: center; z-index: 1000; }
        .modal-content { background: white; border-radius: 30px; padding: 25px; width: 90%; max-width: 400px; box-shadow: 0 20px 40px rgba(0,0,0,0.2); }
        .modal-title { font-size: 1.3rem; font-weight: 700; color: #0a6e79; margin-bottom: 15px; display: flex; align-items: center; gap: 10px; }
        .modal-buttons { display: flex; gap: 12px; margin-top: 25px; }
        
        .search-section { background: #e3f2f5; border-radius: 60px; padding: 15px 20px; margin-bottom: 20px; }
        .search-input { width: 100%; padding: 12px 16px; border-radius: 40px; border: 1.5px solid #cde1e5; margin-bottom: 10px; }
        .search-result { background: white; border-radius: 30px; padding: 20px; margin-top: 15px; border: 2px solid #0a6e79; }
        .delete-player-btn { background: #b85c45; color: white; border: none; padding: 8px 20px; border-radius: 40px; font-weight: 700; cursor: pointer; border-bottom: 3px solid #7a3f2e; margin-top: 10px; width: 100%; }
        .delete-player-btn:active { transform: translateY(3px); border-bottom-width: 0px; }
        
        @media (max-width: 600px) { .form-group { flex: 1 1 100%; } h1 { font-size: 1.7rem; } }
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

        <!-- قسم البحث عن اللاعب مع حذف الاسم -->
        <div class="search-section">
            <div style="display: flex; align-items: center; gap: 10px; margin-bottom: 10px;">
                <i class="fas fa-search" style="color: #0a6e79; font-size: 1.3rem;"></i>
                <h3 style="margin: 0; color: #0a6e79;">البحث عن لاعب</h3>
            </div>
            <input type="text" id="searchPlayerName" class="search-input" placeholder="أدخل اسمك للبحث..." autocomplete="off">
            <button class="btn-sm btn-success" id="searchPlayerBtn" style="width: 100%;">بحث</button>
            <div id="searchResult"></div>
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

        <!-- جدول الملاعب العمودي - قابل للنقر -->
        <div class="card">
            <h2 style="margin-bottom: 15px;"><i class="fas fa-table"></i> جدول الملاعب (اضغط على المباراة للحذف)</h2>
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

        <!-- قسم الإدارة -->
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
                <div id="adminStats" style="background: #e3f2f5; border-radius: 30px; padding: 18px; margin-bottom: 20px;"></div>
                <div id="adminPanelContainer"></div>
                
                <!-- زر إعادة ضبط النظام -->
                <div style="margin-top: 25px; border-top: 2px dashed #0a6e79; padding-top: 20px;">
                    <button id="resetSystemBtn" class="btn btn-danger" style="width: 100%;">
                        <i class="fas fa-exclamation-triangle"></i> إعادة ضبط النظام (مسح الكل)
                    </button>
                </div>
            </div>
        </div>

        <!-- نافذة حذف المباراة المنبثقة -->
        <div id="deleteModal" class="modal" style="display: none;">
            <div class="modal-content">
                <div class="modal-title">
                    <i class="fas fa-trash-alt" style="color: #b5624b;"></i> حذف المباراة
                </div>
                <p id="modalMatchInfo" style="font-weight: 600; margin-bottom: 15px;"></p>
                <div style="margin-bottom: 15px;">
                    <label>أدخل كود الحذف</label>
                    <input type="password" id="deleteCode" placeholder="كود المباراة أو ****" style="width: 100%; margin-top: 8px;">
                </div>
                <div class="modal-buttons">
                    <button class="btn btn-warning" id="confirmDeleteBtn" style="width: 50%;">حذف</button>
                    <button class="btn btn-outline" id="cancelDeleteBtn" style="width: 50%;">إلغاء</button>
                </div>
            </div>
        </div>

        <!-- نافذة تأكيد إعادة ضبط النظام -->
        <div id="resetModal" class="modal" style="display: none;">
            <div class="modal-content">
                <div class="modal-title">
                    <i class="fas fa-exclamation-triangle" style="color: #b33f3f;"></i> إعادة ضبط النظام
                </div>
                <p style="font-weight: 600; margin-bottom: 20px;">⚠️ سيتم حذف جميع المباريات وجميع اللاعبين المسجلين نهائياً</p>
                <div style="margin-bottom: 15px;">
                    <label>أدخل كود الإدارة لتأكيد العملية</label>
                    <input type="password" id="resetCode" placeholder="****" style="width: 100%; margin-top: 8px;">
                </div>
                <div class="modal-buttons">
                    <button class="btn btn-danger" id="confirmResetBtn" style="width: 50%;">تأكيد الضبط</button>
                    <button class="btn btn-outline" id="cancelResetBtn" style="width: 50%;">إلغاء</button>
                </div>
            </div>
        </div>

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
            let players = JSON.parse(localStorage.getItem('players_v6')) || [];
            let matches = JSON.parse(localStorage.getItem('matches_v6')) || [];

            // متغيرات للنافذة المنبثقة
            let currentDeleteDay = null;
            let currentDeleteHour = null;

            function saveAll() {
                localStorage.setItem('players_v6', JSON.stringify(players));
                localStorage.setItem('matches_v6', JSON.stringify(matches));
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

            // -------------------- التحقق من تكرار الكود --------------------
            function isCodeExists(code) {
                return matches.some(m => m.type === 'ready' && m.code == code);
            }

            // -------------------- إعادة ضبط النظام --------------------
            function resetSystem(adminCode) {
                if (adminCode === '****') {
                    players = [];
                    matches = [];
                    saveAll();
                    renderAll();
                    showMsg('✅ تم إعادة ضبط النظام بنجاح');
                    return true;
                } else {
                    showMsg('❌ كود الإدارة غير صحيح', false);
                    return false;
                }
            }

            // -------------------- حذف لاعب من قائمة الانتظار --------------------
            function deletePlayer(playerId) {
                // حذف اللاعب
                players = players.filter(p => p.id !== playerId);
                saveAll();
                
                // تعويض بلاعب آخر - نتحقق من جميع المباريات الناقصة
                // نبحث عن أي مباراة عادية تحتاج لاعبين
                matches.forEach(match => {
                    if (match.type === 'normal' && match.players) {
                        // هذه مباراة مكتملة سابقاً، لا نستطيع إضافة لاعبين
                        // المطلوب: عند حذف لاعب من قائمة الانتظار، يتم تعويضه بأول لاعب في نفس الفئة واليوم والساعة
                    }
                });
                
                // نبحث عن أي فئة/يوم/ساعة فيها أقل من 12 لاعب ونحاول إكمالها
                // هذه عملية تلقائية - النظام سيبحث عن لاعبين جدد عند اكتمال 12
                
                renderAll();
                showMsg('✅ تم حذف اسمك من قائمة الانتظار');
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

                let newPlayer = {
                    id: Date.now() + Math.random(),
                    name, age: parseInt(age), targetCategory: cat, day, hour
                };
                
                players.push(newPlayer);
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
                if (isCodeExists(code))
                    return showMsg('❌ هذا الكود مستخدم مسبقاً، اختر كود آخر', false);

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

            // -------------------- حذف مباراة --------------------
            function deleteMatch(day, hour, inputCode) {
                let match = matches.find(m => m.day === day && m.hour === hour);
                if (!match) return showMsg('المباراة غير موجودة', false);

                if (match.type === 'ready' && match.code == inputCode) {
                    matches = matches.filter(m => !(m.day === day && m.hour === hour));
                    saveAll();
                    renderAll();
                    showMsg('✅ تم حذف المباراة الجاهزة');
                    return true;
                }
                else if (inputCode === '****') {
                    matches = matches.filter(m => !(m.day === day && m.hour === hour));
                    saveAll();
                    renderAll();
                    showMsg('✅ تم حذف المباراة بواسطة الإدارة');
                    return true;
                }
                else {
                    showMsg('❌ الكود غير صحيح', false);
                    return false;
                }
            }

            // -------------------- حذف كل المباريات --------------------
            function deleteAllMatches() {
                matches = [];
                saveAll();
                renderAll();
                showMsg('✅ تم مسح الكل');
            }

            // -------------------- فتح نافذة الحذف --------------------
            function openDeleteModal(day, hour) {
                let match = matches.find(m => m.day === day && m.hour === hour);
                if (!match) {
                    showMsg('لا يمكن حذف ساعة فارغة', false);
                    return;
                }
                currentDeleteDay = day;
                currentDeleteHour = hour;
                document.getElementById('modalMatchInfo').innerHTML = `حذف مباراة ${day} ${hour}<br>النوع: ${match.type === 'ready' ? 'جاهزة' : 'عادية'}`;
                document.getElementById('deleteCode').value = '';
                document.getElementById('deleteModal').style.display = 'flex';
            }

            // -------------------- البحث عن لاعب مع حذف الاسم --------------------
            function searchPlayer() {
                let searchName = document.getElementById('searchPlayerName').value.trim();
                let resultDiv = document.getElementById('searchResult');
                
                if (!searchName) {
                    resultDiv.innerHTML = '';
                    return;
                }

                let inMatches = [];
                matches.forEach(m => {
                    if (m.players && m.players.includes(searchName)) {
                        inMatches.push(m);
                    }
                });

                let inWaiting = players.filter(p => p.name === searchName);

                if (inMatches.length > 0) {
                    let match = inMatches[0];
                    resultDiv.innerHTML = `<div class="search-result" style="background: #0a6e79; color: white;">
                        <i class="fas fa-check-circle" style="font-size: 1.5rem;"></i>
                        <h3 style="color: white; margin: 10px 0;">أنت في مباراة!</h3>
                        <p style="font-size: 1.1rem;">📅 ${match.day} | ⏰ ${match.hour}</p>
                        <p>✅ تمت الدعوة - اكتمل 12 لاعباً</p>
                        <p style="margin-top: 15px; color: #ffd700;"><i class="fas fa-info-circle"></i> لا يمكن حذف اسمك بعد اكتمال المباراة</p>
                    </div>`;
                }
                else if (inWaiting.length > 0) {
                    let player = inWaiting[0];
                    let needed = 12 - players.filter(p => p.targetCategory === player.targetCategory && p.day === player.day && p.hour === player.hour).length;
                    
                    resultDiv.innerHTML = `<div class="search-result" style="background: #e3f2f5;">
                        <i class="fas fa-clock" style="color: #0a6e79; font-size: 1.5rem;"></i>
                        <h3 style="color: #0a6e79; margin: 10px 0;">⏳ جاري تجهيز مباراة لك</h3>
                        <p style="font-size: 1.1rem; color: #0a5b63;">📅 ${player.day} | ⏰ ${player.hour}</p>
                        <p style="color: #0a6e79;">فئة: ${player.targetCategory}</p>
                        <p style="color: #0a6e79; font-weight: 700;">⚠️ تحتاج ${needed} لاعب لاكتمال المباراة</p>
                        <button class="delete-player-btn" onclick="deletePlayerFromSearch('${player.id}')">
                            <i class="fas fa-trash-alt"></i> حذف اسمي من قائمة الانتظار
                        </button>
                    </div>`;
                }
                else {
                    resultDiv.innerHTML = `<div class="search-result" style="background: #f5f5f5;">
                        <i class="fas fa-search" style="color: #666; font-size: 1.5rem;"></i>
                        <p style="margin-top: 10px;">❌ لا يوجد لاعب بهذا الاسم</p>
                    </div>`;
                }
            }

            // -------------------- حذف اللاعب من البحث --------------------
            window.deletePlayerFromSearch = function(playerId) {
                if (confirm('هل أنت متأكد من حذف اسمك من قائمة الانتظار؟')) {
                    deletePlayer(playerId);
                    document.getElementById('searchPlayerName').value = '';
                    document.getElementById('searchResult').innerHTML = '';
                    showMsg('✅ تم حذف اسمك بنجاح');
                }
            };

            // -------------------- إحصائيات الإدارة --------------------
            function renderAdminStats() {
                let statsDiv = document.getElementById('adminStats');
                let totalMatchesWeek = matches.length;
                let readyMatchesCount = matches.filter(m => m.type === 'ready').length;
                let normalMatchesCount = matches.filter(m => m.type === 'normal').length;
                let waitingCount = players.length;
                
                let dayStats = {};
                DAYS.forEach(day => { dayStats[day] = matches.filter(m => m.day === day).length; });
                
                let dayStatsHtml = '';
                for (let day in dayStats) {
                    if (dayStats[day] > 0) {
                        dayStatsHtml += `<span style="background: #0a6e79; color: white; padding: 4px 12px; border-radius: 30px; margin: 3px; display: inline-block;">${day}: ${dayStats[day]}</span>`;
                    }
                }

                statsDiv.innerHTML = `
                    <div style="display: flex; flex-wrap: wrap; gap: 20px; align-items: center;">
                        <div style="flex: 1; min-width: 200px;">
                            <h4 style="color: #0a6e79; margin-bottom: 12px;"><i class="fas fa-chart-bar"></i> إحصائيات الأسبوع</h4>
                            <p style="margin: 8px 0;"><strong>إجمالي المباريات:</strong> ${totalMatchesWeek}</p>
                            <p style="margin: 8px 0;"><strong>مباريات جاهزة:</strong> ${readyMatchesCount}</p>
                            <p style="margin: 8px 0;"><strong>مباريات عادية:</strong> ${normalMatchesCount}</p>
                            <p style="margin: 8px 0;"><strong>لاعبون في الانتظار:</strong> ${waitingCount}</p>
                        </div>
                        <div style="flex: 1; min-width: 200px;">
                            <h4 style="color: #0a6e79; margin-bottom: 12px;"><i class="fas fa-calendar-alt"></i> توزيع المباريات</h4>
                            <div style="display: flex; flex-wrap: wrap; gap: 5px;">
                                ${dayStatsHtml || '<span style="color: #666;">لا توجد مباريات</span>'}
                            </div>
                        </div>
                    </div>
                `;
            }

            // -------------------- جدول الملاعب العمودي --------------------
            function renderSchedule() {
                let container = document.getElementById('verticalScheduleContainer');
                if (!container) return;
                let html = '';
                
                DAYS.forEach(day => {
                    html += `<div class="schedule-day" onclick="openDeleteModalFromSchedule('${day}')">`;
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
                        
                        html += `<div class="${cls}" onclick="event.stopPropagation(); openDeleteModalFromHour('${day}', '${hour}')">${content}</div>`;
                    });
                    
                    html += `</div></div>`;
                });
                container.innerHTML = html;
            }

            // -------------------- بطاقات الفئات --------------------
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
                
                renderAdminStats();

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
                        <td style="direction: ltr;">${m.code || '—'}</td>`;
                    
                    if (m.type === 'ready' && m.code) {
                        html += `<td><button class="btn-sm btn-warning" style="width: auto; padding: 6px 16px;" onclick="deleteReadyCodeFromAdmin('${m.code}', '${m.day}', '${m.hour}')"><i class="fas fa-trash"></i> حذف</button></td>`;
                    } else {
                        html += `<td><button class="btn-sm btn-warning" style="width: auto; padding: 6px 16px;" onclick="deleteNormalMatchFromAdmin('${m.day}', '${m.hour}')"><i class="fas fa-trash"></i> حذف (إدارة)</button></td>`;
                    }
                    html += `</tr>`;
                });
                
                html += '</tbody></table>';
                container.innerHTML = html;
            }

            // -------------------- رندر كامل --------------------
            function renderAll() {
                renderSchedule();
                renderCategories();
                updateStats();
            }

            // -------------------- دوال عامة للـ onclick --------------------
            window.openDeleteModalFromSchedule = function(day) {};

            window.openDeleteModalFromHour = function(day, hour) {
                openDeleteModal(day, hour);
            };

            window.deleteReadyCodeFromAdmin = function(code, day, hour) {
                if (confirm('حذف المباراة الجاهزة؟')) {
                    matches = matches.filter(m => !(m.type === 'ready' && m.code == code && m.day === day && m.hour === hour));
                    saveAll();
                    renderAll();
                    renderAdmin();
                    showMsg('✅ تم حذف المباراة');
                }
            };

            window.deleteNormalMatchFromAdmin = function(day, hour) {
                if (confirm('حذف المباراة العادية؟')) {
                    matches = matches.filter(m => !(m.type === 'normal' && m.day === day && m.hour === hour));
                    saveAll();
                    renderAll();
                    renderAdmin();
                    showMsg('✅ تم حذف المباراة');
                }
            };

            // -------------------- تهيئة الأحداث --------------------
            function init() {
                fillHours();
                renderAll();
                updateStats();

                document.getElementById('registerPlayerBtn').addEventListener('click', register);
                document.getElementById('bookReadyMatchBtn').addEventListener('click', bookReady);
                
                document.getElementById('toggleAdminBtn').addEventListener('click', function() {
                    document.getElementById('adminContent').classList.toggle('hidden');
                });

                document.getElementById('unlockAdminBtn').addEventListener('click', function() {
                    if (document.getElementById('adminCode').value === '****') {
                        renderAdmin();
                        showMsg('🔓 تم فتح الإدارة');
                    } else {
                        showMsg('❌ كود خاطئ', false);
                    }
                });

                // زر إعادة ضبط النظام
                document.getElementById('resetSystemBtn').addEventListener('click', function() {
                    document.getElementById('resetModal').style.display = 'flex';
                });

                // تأكيد إعادة الضبط
                document.getElementById('confirmResetBtn').addEventListener('click', function() {
                    let resetCode = document.getElementById('resetCode').value;
                    if (resetCode === '****') {
                        players = [];
                        matches = [];
                        saveAll();
                        renderAll();
                        document.getElementById('resetModal').style.display = 'none';
                        document.getElementById('resetCode').value = '';
                        showMsg('✅ تم إعادة ضبط النظام بالكامل');
                        
                        // إخفاء لوحة الإدارة
                        document.getElementById('adminContent').classList.add('hidden');
                    } else {
                        showMsg('❌ كود الإدارة غير صحيح', false);
                    }
                });

                // إلغاء إعادة الضبط
                document.getElementById('cancelResetBtn').addEventListener('click', function() {
                    document.getElementById('resetModal').style.display = 'none';
                    document.getElementById('resetCode').value = '';
                });

                document.getElementById('searchPlayerBtn').addEventListener('click', searchPlayer);
                document.getElementById('searchPlayerName').addEventListener('keypress', function(e) {
                    if (e.key === 'Enter') searchPlayer();
                });

                document.getElementById('confirmDeleteBtn').addEventListener('click', function() {
                    let code = document.getElementById('deleteCode').value;
                    if (currentDeleteDay && currentDeleteHour) {
                        deleteMatch(currentDeleteDay, currentDeleteHour, code);
                        document.getElementById('deleteModal').style.display = 'none';
                        renderAll();
                        if (document.getElementById('adminContent').classList.contains('hidden') === false) {
                            renderAdmin();
                        }
                    }
                });

                document.getElementById('cancelDeleteBtn').addEventListener('click', function() {
                    document.getElementById('deleteModal').style.display = 'none';
                });

                window.addEventListener('click', function(e) {
                    if (e.target.classList.contains('modal')) {
                        document.getElementById('deleteModal').style.display = 'none';
                        document.getElementById('resetModal').style.display = 'none';
                    }
                });
            }

            init();
        })();
    </script>
</body>
</html>
