
📌 Overview  
This project is a **complete relational database system** for a fictional music store, built using **MySQL** and **Python**. It includes:  
✔ **Artist, Album, and Genre Cataloging**  
✔ **Customer & Sales Management**  
✔ **Employee Performance Tracking**  
✔ **Automated Data Import Scripts**  
✔ **SQL Views for Business Analytics**  

---

🚀 Features 
✅ **Database Schema:** 6 normalized tables (`artist`, `album`, `genre`, `employee`, `customer`, `invoice`)  
✅ **Python ETL Script:** Automates CSV-to-MySQL data imports  
✅ **Optimized SQL Queries:** Fast reporting and analytics  
✅ **Predefined Views:** Sales trends, top customers, employee performance  
✅ **GitHub-Ready:** Full documentation and setup guide  

---

### Prerequisites 
- **MySQL Server** (8.0+)  
- **Python 3.8+**  
- **MySQL Workbench** (Recommended for GUI)  

## 📂 Database Schema 

### Tables 
| Table       | Description                          |
|-------------|--------------------------------------|
| `artist`    | Music artists and bands              |
| `album`     | Album details (linked to artists)    |
| `genre`     | Music genres (Rock, Jazz, etc.)      |
| `employee`  | Store staff & support reps           |
| `customer`  | Customer profiles & purchase history |
| `invoice`   | Sales transactions                   |

### Relationships 
- `album.artist_id` → `artist.artist_id`  
- `customer.support_rep_id` → `employee.employee_id`  
- `invoice.customer_id` → `customer.customer_id`  

---

## 📊 SQL Views
| View Name               | Description                          |
|-------------------------|--------------------------------------|
| `vw_rock_albums`        | Lists all Rock genre albums          |
| `vw_customer_spending`  | Tracks customer purchase totals      |
| `vw_employee_sales`     | Measures sales by support reps       |

---
 

## 💡 How to Contribute 
1. **Fork** the repository  
2. Create a **new branch** (`git checkout -b feature/your-feature`)  
3. Commit changes (`git commit -m "Add feature"`)  
4. Push to the branch (`git push origin feature/your-feature`)  
5. Open a **Pull Request**  
