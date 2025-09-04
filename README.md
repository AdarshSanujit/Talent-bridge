# TalentBridge Automation Suite

This repository contains **Robot Framework test cases** for automating the core features of the **TalentBridge web application**.  
It mainly focuses on testing the authentication (login) and job posting workflows.

---

## 📂 Project Structure

```
tests/
 ├── auth/
 │   └── login.robot          # Test case for HR login
 ├── jobs/
 │   └── post_job.robot       # Test case for HR posting a job
 └── resources/
     └── Common.robot         # Shared keywords & variables
```

---

## ⚙️ Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/TalentBridge.git
   cd TalentBridge
   ```

2. **Create and activate a virtual environment**
   ```bash
   python -m venv .venv
   .venv\Scripts\activate      # On Windows
   source .venv/bin/activate   # On Linux/Mac
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

   Example requirements:
   ```
   robotframework
   robotframework-seleniumlibrary
   selenium
   ```

4. **Run the test suite**
   ```bash
   robot -d reports tests
   ```

---

## ✅ Test Cases Implemented

1. **HR Login Test**
   - Verifies HR user can log in successfully.
   - Uses credentials defined in `Common.robot`.

2. **HR Post Job Test**
   - HR can post a new job by filling job title, department, type, and description.
   - Confirms job appears in job listings after posting.

---

## 📊 Reports & Logs

After running the tests, reports are generated inside the `reports/` directory:

- **report.html** → High-level summary of test execution.  
- **log.html** → Detailed execution log (with screenshots if enabled).  
- **output.xml** → Machine-readable results file.

---

## 🚀 Next Steps (Future Enhancements)

- Add **Logout test case**.  
- Add **Negative login test** (invalid credentials).  
- Automate **Candidate flow** (register, apply for a job).  
- Add **Cross-browser testing** with different drivers.

---

## 🛠️ Tech Stack

- [Robot Framework](https://robotframework.org/)  
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)  
- Python 3.x  

---

## 👨‍💻 Author

**Adarsh Sanujit**  
- 💼 Projects: Data Analysis, Machine Learning, Automation  
- 🩸 Donated blood 9 times 🩸  
- 🌱 Exploring Test Automation with Robot Framework  

---

✨ Happy Testing with Robot Framework! ✨
