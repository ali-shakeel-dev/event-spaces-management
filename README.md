# Event Spaces Platform

## Project Description
Event Spaces is a web application designed to help users browse, book, and list event venues with ease. You can browse and book the ideal venue for weddings, parties, conferences, and more. Discover unique venues with easy booking on our Event Spaces app.

## Features

### 1. User Authentication
- Secure registration and login functionality.
- Password protection with encrypted storage.
- Persistent sessions for seamless browsing.

### 2. Venue Management
- **List Your Venue:** Venue managers can easily add their event spaces to the platform.
- **Update Venue Information:** Edit existing venue details, including availability and features.
- **Delete Venues:** Remove listings when they are no longer available.
- **Manage Listings:** View all listed venues in one place.

### 3. Browse Venues with Advanced Filters
- Search and filter venues by:
  - **Location:** Select from available cities and regions.
  - **Event Type:** Find venues for weddings, corporate events, parties, and more.
  - **Venue Type:** Filter by banquet halls, conference rooms, gardens, and other types.

### 4. Booking Functionality
- Users can book venues by providing personal details.
- Booking requests are sent directly to venue managers.
- Seamless and user-friendly booking process.

---

### Installation and Setup

#### Prerequisites
- **Ruby** (version 2.7 or higher recommended)  
- **Ruby on Rails** (version 6.0 or higher)  
- **PostgreSQL** or other preferred database  

#### Step-by-Step Setup

1. **Clone the Repository:**  
   ```bash
   git clone https://github.com/ali-shakeel-dev/event-spaces-management.git
   cd event-spaces-management
   ```

2. **Install Dependencies:**  
   ```bash
   bundle install
   ```

3. **Set Environment Variables:**  
   Create a `.env` file in the root directory with the following variables:
   ```env
   DATABASE_URL=your_database_url
   SECRET_KEY_BASE=your_secret_key
   ```

4. **Setup Database:**  
   ```bash
   rails db:create db:migrate
   ```

5. **Start the Server:**  
   ```bash
   rails server
   ```

### Accessing the Application
Once the server is running, visit [http://localhost:3000](http://localhost:3000) to access the platform.

---

## Usage

### 1. **User Registration & Authentication:**
   - Navigate to the registration page and create an account.
   - Log in to access venue listing and booking features.

### 2. **Listing a Venue:**
   - Navigate to the "List Your Space" page.
   - Fill out the form with venue details and submit.

### 3. **Browsing Venues:**
   - Use the search and filter options on the "Browse Venues" page to find suitable venues.

### 4. **Booking a Venue:**
   - Select a venue and fill out the booking form with your details.
   - Submit the request, and the venue manager will receive your booking details.

---

## Contributing
I welcome contributions from the community! Please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature.
3. Submit a pull request with a detailed explanation of the changes.

---

## Contact
For questions or support, please reach out to [muhammadalishakeel77@gmail.com].
