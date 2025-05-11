# Normalization to 3NF

This document describes how the Airbnb database schema was normalized to Third Normal Form (3NF).

## 1. First Normal Form (1NF)

- All attributes contain atomic values (e.g., `email`, `rating`, `pricepernight`).
- No repeating groups or multi-valued fields.

## 2. Second Normal Form (2NF)

- All tables have a single-column primary key (UUID).
- All non-key attributes fully depend on the entire primary key.
- No partial dependencies exist.

## 3. Third Normal Form (3NF)

- All non-key attributes are directly dependent on the primary key.
- No transitive dependencies (e.g., `email` does not determine `username`, etc.)

## Conclusion

The database schema adheres to 3NF. Each entity is clearly separated, redundancies are minimized, and referential integrity is maintained through foreign keys.
