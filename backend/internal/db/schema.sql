CREATE TABLE entities (
 id SERIAL PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 jurisdiction VARCHAR(50) NOT NULL,
 entity_type VARCHAR(100) NOT NULL,
 status VARCHAR(50) DEFAULT 'active',
 standing VARCHAR(50) DEFAULT 'good',
 next_filing_due DATE,
 created_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE compliance_checks (
 id SERIAL PRIMARY KEY,
 entity_id INT REFERENCES entities(id),
 check_type VARCHAR(100),
 result VARCHAR(50),
 checked_at TIMESTAMP DEFAULT NOW()
);
