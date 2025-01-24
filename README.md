# Sanber63-Cypress-Kelompok3-MobileTesting

# Project Setup for Sanber63-Cypress-Kelompok3-MobileTesting

## Anggota Kelompok & Roles


| Nama                      | username github       | Test yang dilakukan                    |
|---------------------------|-----------------------|----------------------------------------|
| **Qonita Lutfia**         | `qonitalutfia`      | Positive Search & sign out               |
| **Novazira A.F**          | `novaziraa`         | Negative sign in                         |
| **Fadly Mahendra**        | `fadlymahendra`     | Negative Search                          |
| **Reza Hammed Tri Wibowo**| `rezahamedtriwibowo`| Negative sign out                        |
| **Samuel Allhert**        | `Toxine1157`        | Negative Book Flight                     |
| **Farros H.R**            | `farroshayray`      | Positive sign in & positive Book Flight  |

## Data Test
username: support@ngendigital.com <br>
password: abc123 <br>
static booking ID for search: DA935 <br>

## 📁 Project Structure
<span style="color:red">(output video should be in results folder)</span>
```
└── 📁Sanber63-Cypress-Kelompok3-MobileTesting
    └── 📁.venv
    └── 📁resources
    └── 📁results 
        └── log.html
        └── output.xml
        └── report.html
        └── 🔴 (output video should be here)
    └── 📁suites
        └── example_test.robot
    └── README.md
    └── requirements.txt
```

## 🚀 Steps to Set Up the Project

### 1. Clone the Repository
Clone the project repository from GitHub:
```bash
$ git clone https://github.com/farroshayray/Sanber63-Cypress-Kelompok3-MobileTesting.git
$ cd Sanber63-Cypress-Kelompok3-MobileTesting
```

### 2. Create and Activate Virtual Environment
Create a virtual environment to isolate dependencies:
```bash
$ python -m venv .venv
$ source .venv/bin/activate   # On Linux/Mac
$ .venv\Scripts\activate   # On Windows
```

### 3. Install Required Dependencies
Install the required Python packages listed in `requirements.txt`:
```bash
$ pip install -r requirements.txt
```

### 4. Create a New Branch
Create a new branch for your feature or test case. Use the naming convention `yourname/featureOrTestType` (e.g., `farros/positiveLogin`):
```bash
$ git checkout -b farros/positiveLogin
```

### 5. Push the New Branch to Remote Repository
Push the new branch to the remote repository:
```bash
$ git push origin farros/positiveLogin
```

## 🔄 Running the Tests

1. Activate the virtual environment if not already active:
   ```bash
   $ source .venv/bin/activate   # On Linux/Mac
   $ .venv\Scripts\activate   # On Windows
   ```

2. Run the Robot Framework test suite:
   ```bash
   $ robot -d results suites/example_test.robot
   ```

## 📋 Notes
- Ensure Appium server is running before executing tests.
- Update `example_test.robot` with the correct desired capabilities and element locators for your specific test cases.

## 🤝 Contribution Guidelines
1. Create a new branch for your changes.
2. Follow the naming convention for branches.
3. Push your branch to the remote repository.
4. Create a pull request for review.

---

By following this documentation, you can set up and manage the `Sanber63-Cypress-Kelompok3-MobileTesting` project efficiently.
