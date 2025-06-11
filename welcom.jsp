<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>HAS Hospital - Welcome</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Inter&display=swap');
    /* Reset and base styling */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    html, body {
      height: 100%;
      font-family: 'Inter', sans-serif;
      background: linear-gradient(135deg, #a0d8f7, #ffffff);
      color: #0a314a;
    }
    body {
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      padding: 16px;
      gap: 32px;
    }
    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      max-width: 1200px;
      margin: 0 auto;
      padding: 8px 0;
    }
    .logo {
      font-size: 2rem;
      font-weight: 900;
      background: linear-gradient(135deg, #0a314a, #5a8bd8);
      background-clip: text;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      user-select: none;
      letter-spacing: 0.05em;
      cursor: default;
    }
    .auth-buttons {
      display: flex;
      gap: 16px;
    }
    a.button {
      display: inline-block;
      padding: 12px 28px;
      font-size: 1rem;
      color: #0a314a;
      background-color: #a0d8f7;
      border: 2px solid #0a314a;
      border-radius: 12px;
      text-decoration: none;
      font-weight: 600;
      transition: background-color 0.3s ease, color 0.3s ease,
                  box-shadow 0.3s ease, transform 0.2s ease;
      min-width: 110px;
      text-align: center;
      user-select: none;
      box-shadow: 0 4px 8px rgba(10, 49, 74, 0.15);
      cursor: pointer;
    }
    a.button:hover,
    a.button:focus {
      background-color: #0a314a;
      color: #a0d8f7;
      box-shadow: 0 8px 16px rgba(10, 49, 74, 0.4);
      transform: translateY(-2px);
      outline: none;
    }
    a.button:focus-visible {
      outline: 3px solid #075677;
      outline-offset: 4px;
    }
    main {
      flex-grow: 1;
      max-width: 1200px;
      margin: 0 auto;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 32px;
    }
    section.schedule {
      background: rgba(255 255 255 / 0.85);
      border-radius: 16px;
      padding: 24px 32px;
      box-shadow: 0 6px 12px rgba(10, 49, 74, 0.12);
      display: flex;
      flex-direction: column;
      gap: 16px;
    }
    section.schedule h2 {
      font-size: 1.75rem;
      font-weight: 700;
      color: #0a314a;
      border-bottom: 2px solid #5a8bd8;
      padding-bottom: 8px;
      user-select: none;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      color: #0a314a;
      font-size: 0.95rem;
    }
    th, td {
      text-align: left;
      padding: 8px 12px;
      border-bottom: 1px solid #cfdff8;
    }
    th {
      background: #dbe9fc;
      font-weight: 600;
    }
    tr:hover {
      background-color: #e6f0ff;
      transition: background-color 0.25s ease;
    }
    /* Responsive tweaks */
    @media (max-width: 640px) {
      body {
        padding: 12px;
        gap: 24px;
      }
      header {
        flex-direction: column;
        align-items: flex-start;
        gap: 12px;
      }
      .auth-buttons {
        width: 100%;
        justify-content: flex-start;
        gap: 12px;
      }
      main {
        grid-template-columns: 1fr;
        gap: 24px;
      }
      section.schedule {
        padding: 20px 20px;
      }
    }
  </style>
</head>
<body>
  <header>
    <div class="logo" aria-label="HAS Hospital">HAS</div>
    <nav class="auth-buttons" aria-label="Authentication navigation">
      <a href="signup.jsp" class="button" role="button" tabindex="0">Sign Up</a>
      <a href="signin.jsp" class="button" role="button" tabindex="0">Sign In</a>
    </nav>
  </header>

  <main>
    <section class="schedule" aria-labelledby="doctors-schedule-header">
      <h2 id="doctors-schedule-header">Doctors Schedule</h2>
      <table role="grid" aria-describedby="doctors-description">
        <caption id="doctors-description" class="sr-only">Weekly schedule for doctors</caption>
        <thead>
          <tr>
            <th scope="col">Name</th>
            <th scope="col">Specialization</th>
            <th scope="col">Monday</th>
            <th scope="col">Tuesday</th>
            <th scope="col">Wednesday</th>
            <th scope="col">Thursday</th>
            <th scope="col">Friday</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Dr. Emily Chen</td>
            <td>Cardiology</td>
            <td>9am - 3pm</td>
            <td>Off</td>
            <td>9am - 3pm</td>
            <td>9am - 3pm</td>
            <td>Off</td>
          </tr>
          <tr>
            <td>Dr. Luis Martinez</td>
            <td>Orthopedics</td>
            <td>Off</td>
            <td>10am - 5pm</td>
            <td>10am - 5pm</td>
            <td>Off</td>
            <td>10am - 3pm</td>
          </tr>
          <tr>
            <td>Dr. Aisha Khan</td>
            <td>Neurology</td>
            <td>8am - 2pm</td>
            <td>8am - 2pm</td>
            <td>Off</td>
            <td>8am - 2pm</td>
            <td>8am - 12pm</td>
          </tr>
        </tbody>
      </table>
    </section>

    <section class="schedule" aria-labelledby="nurses-schedule-header">
      <h2 id="nurses-schedule-header">Nurses Schedule</h2>
      <table role="grid" aria-describedby="nurses-description">
        <caption id="nurses-description" class="sr-only">Weekly schedule for nurses</caption>
        <thead>
          <tr>
            <th scope="col">Name</th>
            <th scope="col">Shift</th>
            <th scope="col">Monday</th>
            <th scope="col">Tuesday</th>
            <th scope="col">Wednesday</th>
            <th scope="col">Thursday</th>
            <th scope="col">Friday</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Nurse Sarah Lee</td>
            <td>Day</td>
            <td>7am - 3pm</td>
            <td>7am - 3pm</td>
            <td>Off</td>
            <td>7am - 3pm</td>
            <td>7am - 3pm</td>
          </tr>
          <tr>
            <td>Nurse James O'Connor</td>
            <td>Night</td>
            <td>11pm - 7am</td>
            <td>11pm - 7am</td>
            <td>11pm - 7am</td>
            <td>Off</td>
            <td>11pm - 7am</td>
          </tr>
          <tr>
            <td>Nurse Priya Singh</td>
            <td>Day</td>
            <td>Off</td>
            <td>7am - 3pm</td>
            <td>7am - 3pm</td>
            <td>7am - 3pm</td>
            <td>Off</td>
          </tr>
        </tbody>
      </table>
    </section>

    <section class="schedule" aria-labelledby="staff-schedule-header">
      <h2 id="staff-schedule-header">Staff Schedule (Front Desk & Janitors)</h2>
      <table role="grid" aria-describedby="staff-description">
        <caption id="staff-description" class="sr-only">Weekly schedule for front desk staff and janitors</caption>
        <thead>
          <tr>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th scope="col">Monday</th>
            <th scope="col">Tuesday</th>
            <th scope="col">Wednesday</th>
            <th scope="col">Thursday</th>
            <th scope="col">Friday</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Michael Adams</td>
            <td>Front Desk</td>
            <td>8am - 4pm</td>
            <td>8am - 4pm</td>
            <td>Off</td>
            <td>8am - 4pm</td>
            <td>8am - 4pm</td>
          </tr>
          <tr>
            <td>Linda Perez</td>
            <td>Janitor</td>
            <td>6am - 2pm</td>
            <td>6am - 2pm</td>
            <td>6am - 2pm</td>
            <td>Off</td>
            <td>6am - 2pm</td>
          </tr>
          <tr>
            <td>Robert Chang</td>
            <td>Front Desk</td>
            <td>Off</td>
            <td>9am - 5pm</td>
            <td>9am - 5pm</td>
            <td>9am - 5pm</td>
            <td>Off</td>
          </tr>
        </tbody>
      </table>
    </section>

    <section class="schedule" aria-labelledby="patients-schedule-header">
      <h2 id="patients-schedule-header">Patients Schedule</h2>
      <table role="grid" aria-describedby="patients-description">
        <caption id="patients-description" class="sr-only">Weekly appointments/schedule for patients</caption>
        <thead>
          <tr>
            <th scope="col">Patient Name</th>
            <th scope="col">Department</th>
            <th scope="col">Appointment Date</th>
            <th scope="col">Doctor</th>
            <th scope="col">Notes</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Alice Johnson</td>
            <td>Cardiology</td>
            <td>2024-06-10</td>
            <td>Dr. Emily Chen</td>
            <td>Routine checkup</td>
          </tr>
          <tr>
            <td>George Smith</td>
            <td>Orthopedics</td>
            <td>2024-06-12</td>
            <td>Dr. Luis Martinez</td>
            <td>Follow-up after surgery</td>
          </tr>
          <tr>
            <td>Fatima Ali</td>
            <td>Neurology</td>
            <td>2024-06-15</td>
            <td>Dr. Aisha Khan</td>
            <td>Consultation</td>
          </tr>
        </tbody>
      </table>
    </section>
  </main>
</body>
</html>
