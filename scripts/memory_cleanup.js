#!/usr/bin/env node

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

const MEMORY_DIR = path.join(__dirname, '../memory');
const ARCHIVE_DIR = path.join(__dirname, '../memory/archive');
const LONG_TERM_MEMORY = path.join(__dirname, '../config/MEMORY.md');

// Ensure archive exists
if (!fs.existsSync(ARCHIVE_DIR)) {
  fs.mkdirSync(ARCHIVE_DIR, { recursive: true });
}

// Get today's date string YYYY-MM-DD
const today = new Date().toISOString().split('T')[0];

console.log(`Running Memory Cleanup for date: ${today}`);

// 1. List all memory files
const files = fs.readdirSync(MEMORY_DIR).filter(f => f.match(/^\d{4}-\d{2}-\d{2}\.md$/));

files.forEach(file => {
  const filePath = path.join(MEMORY_DIR, file);
  const fileDate = file.replace('.md', '');

  // Skip today and yesterday (keep recent context)
  const daysDiff = (new Date(today) - new Date(fileDate)) / (1000 * 60 * 60 * 24);
  
  if (daysDiff > 2) {
    console.log(`Processing stale memory: ${file}`);
    
    // Read content
    const content = fs.readFileSync(filePath, 'utf8');
    
    // Append to archive file (monthly)
    const month = fileDate.substring(0, 7); // YYYY-MM
    const archiveFile = path.join(ARCHIVE_DIR, `${month}-archive.md`);
    
    fs.appendFileSync(archiveFile, `\n\n### ${fileDate}\n${content}`);
    
    // Remove original file
    fs.unlinkSync(filePath);
    console.log(`Archived and deleted ${file}`);
  } else {
    console.log(`Keeping recent memory: ${file}`);
  }
});

console.log("Memory cleanup complete.");
