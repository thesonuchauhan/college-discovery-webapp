let allColleges = []; // global store for filtering

// ====== Fetch Colleges and Populate Filters ======
function fetchCollegesAndPopulateFilters() {
    fetch('/api/colleges')
        .then(res => res.json())
        .then(data => {
            allColleges = data;

            // Extract unique cities and courses
            const cities = [...new Set(data.map(c => c.city))].sort();
            const courses = [...new Set(data.flatMap(c => c.courses.split(',').map(x => x.trim())))].sort();

            populateDropdown('cityFilter', cities, 'All Cities');
            populateDropdown('courseFilter', courses, 'All Courses');

            renderColleges(data); // show all initially
        })
}

// ====== Populate Dropdowns ======
function populateDropdown(id, values, defaultLabel) {
    const select = document.getElementById(id);
    select.innerHTML = `<option value="">${defaultLabel}</option>`;
    values.forEach(value => {
        select.innerHTML += `<option value="${value}">${value}</option>`;
    });
}

// ====== Search Colleges ======
function searchColleges() {
    const search = document.getElementById('search').value.trim().toLowerCase();
    const selectedCity = document.getElementById('cityFilter').value.toLowerCase();
    const selectedCourse = document.getElementById('courseFilter').value.toLowerCase();

    const filtered = allColleges.filter(college => {
        const matchName = !search || college.name.toLowerCase().includes(search);
        const matchCity = !selectedCity || college.city.toLowerCase() === selectedCity;
        const matchCourse = !selectedCourse || college.courses.toLowerCase().includes(selectedCourse);
        return matchName && matchCity && matchCourse;
    });

    renderColleges(filtered);
}

// ====== Render College Cards ======
function renderColleges(data) {
    const collegeList = document.getElementById('collegeList');
    collegeList.innerHTML = '';

    if (data.length === 0) {
        collegeList.innerHTML = `<p style="color:red;">❌ No colleges found.</p>`;
        return;
    }

    data.forEach(college => {
        const div = document.createElement('div');
        div.className = 'college';

        const fullStars = Math.round(college.rating);
        const stars = '★'.repeat(fullStars) + '☆'.repeat(5 - fullStars);

        div.innerHTML = `
            <h3>${college.name}</h3>
            <p><strong>City:</strong> ${college.city}</p>
            <p><strong>Contact:</strong> ${college.contact}</p>
            <p><strong>Rating:</strong> <span class="stars">${stars}</span> (${college.rating})</p>
            <p><strong>Courses:</strong> ${college.courses}</p>
            <p><strong>Fees:</strong> ₹${college.fees}</p>
            <a href="https://www.google.com/search?q=${encodeURIComponent(college.name + ' ' + college.city)}" target="_blank">
                🔍 Know more 
            </a>
        `;
        collegeList.appendChild(div);
    });
}

// ====== Admin Login ======
function adminLogin() {
    const username = document.getElementById('username').value.trim();
    const password = document.getElementById('password').value.trim();

    if (!username || !password) {
        alert('❌ Please enter Username and Password.');
        return;
    }

    fetch('/api/adminLogin', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username, password })
    })
    .then(res => res.json())
    .then(data => {
        if (data.Status === 'Success') {
            document.getElementById('adminSection').style.display = 'block';
            document.getElementById('loginSection').style.display = 'none';
        } else {
            alert('❌ Invalid Credentials');
        }
    })
    .catch(err => {
        console.error(err);
        alert('❌ Server Error');
    });
}

// ====== Add College ======
function addCollege() {
    const name = document.getElementById('cname').value.trim();
    const city = document.getElementById('city').value.trim();
    const contact = document.getElementById('contact').value.trim();
    const rating = document.getElementById('rating').value.trim();
    const courses = document.getElementById('courses').value.trim();
    const fees = document.getElementById('fees').value.trim();

    if (!name || !city || !contact || !rating || !courses || !fees) {
        alert("❌ Please fill all fields!");
        return;
    }

    fetch('/api/addCollege', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ name, city, contact, rating, courses, fees })
    })
    .then(res => res.json())
    .then(data => {
        if (data.Status === 'Success') {
            alert('✅ College Added Successfully!');
            document.getElementById('cname').value = '';
            document.getElementById('city').value = '';
            document.getElementById('contact').value = '';
            document.getElementById('rating').value = '';
            document.getElementById('courses').value = '';
            document.getElementById('fees').value = '';
        } else {
            alert('❌ Failed to Add College. Try Again.');
        }
    })
    .catch(err => {
        console.error(err);
        alert('❌ Server Error. Check connection.');
    });
}

// ====== Dark Mode Toggle (Persistent) ======
document.addEventListener("DOMContentLoaded", () => {
    const toggleButton = document.getElementById('darkToggle');

    // Load saved theme
    if (localStorage.getItem('theme') === 'dark') {
        document.body.classList.add('dark-mode');
        if (toggleButton) toggleButton.textContent = '☀️ Light';
    }

    if (toggleButton) {
        toggleButton.addEventListener('click', () => {
            document.body.classList.toggle('dark-mode');

            const isDark = document.body.classList.contains('dark-mode');
            localStorage.setItem('theme', isDark ? 'dark' : 'light');
            toggleButton.textContent = isDark ? '☀️ Light ' : '🌙 Dark ';
        });
    }
});

// ====== On Page Load ======
window.onload = fetchCollegesAndPopulateFilters;
