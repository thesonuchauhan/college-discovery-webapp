const express = require('express');
const router = express.Router();
const db = require('../db');

// 🔍 Fetch colleges (Search by name, city, or courses)
router.get('/colleges', (req, res) => {
    const search = req.query.search;
    let sql = 'SELECT * FROM colleges';
    let values = [];

    if (search) {
        sql += ' WHERE name LIKE ? OR city LIKE ? OR courses LIKE ?';
        const searchValue = `%${search}%`;
        values = [searchValue, searchValue, searchValue];
    }

    db.query(sql, values, (err, result) => {
        if (err) {
            console.error('Error fetching colleges:', err);
            return res.status(500).json({ Error: 'Database Query Error' });
        }
        return res.json(result);
    });
});

// ➕ Add college
router.post('/addCollege', (req, res) => {
    const { name, city, contact, rating, courses, fees } = req.body;
    const sql = 'INSERT INTO colleges (name, city, contact, rating, courses, fees) VALUES (?, ?, ?, ?, ?, ?)';
    const values = [name, city, contact, rating, courses, fees];

    db.query(sql, values, (err) => {
        if (err) {
            console.error('Error adding college:', err);
            return res.status(500).json({ Error: 'Database Insert Error' });
        }
        return res.json({ Status: 'Success' });
    });
});

// 🔑 Admin Login
router.post('/adminLogin', (req, res) => {
    const { username, password } = req.body;
    const sql = 'SELECT * FROM admin WHERE username = ? AND password = ?';
    const values = [username, password];

    db.query(sql, values, (err, result) => {
        if (err) {
            console.error('Error during admin login:', err);
            return res.status(500).json({ Error: 'Database Query Error' });
        }
        if (result.length > 0) {
            return res.json({ Status: 'Success' });
        } else {
            return res.json({ Status: 'Fail' });
        }
    });
});

module.exports = router;
