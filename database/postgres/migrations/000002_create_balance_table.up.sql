-- Create the balances table
CREATE TABLE balances (
    id SERIAL PRIMARY KEY,
    account_id INT NOT NULL,
    type VARCHAR(50) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
    updated_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
    
    -- Add foreign key constraint to associate balances with accounts
    FOREIGN KEY (account_id) REFERENCES accounts(id)
);