const express = require('express');
const cors = require('cors');
const path = require('path');
const app = express();
const collegeRoutes = require('./routes/collegeRoutes');

app.use(cors());
app.use(express.json());

// ✅ Serve static files (HTML, CSS, JS)
app.use(express.static(path.join(__dirname, 'public')));

// ✅ API routes
app.use('/api', collegeRoutes);

// ✅ Root route
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// ✅ Server listen
const PORT = 5000;
app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
});
