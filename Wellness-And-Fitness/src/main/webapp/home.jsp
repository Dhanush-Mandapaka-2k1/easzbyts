<%@ page import="com.config.user.entity.Users" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wellness And Fitness</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.scroll-container {
    position: relative;
    height: 100vh;
    overflow: hidden;
    background-color: #f0f0f0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.scroll-text {
    font-size: 2em;
    font-weight: bold;
    white-space: nowrap;
    animation: scroll-horizontal 15s linear infinite; /* Enable scrolling animation */
    margin-bottom: 20px;
}

.profile-link {
    position: fixed; /* Fixed position for profile link */
    top: 10px;
    right: 10px;
    background-color: #333;
    color: #fff;
    padding: 10px 15px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 1em;
    z-index: 100; /* Ensure it is above other elements */
}

.profile-link:hover {
    background-color: #555;
}

.profile-container {
    display: none; /* Hidden by default */
    position: fixed; /* Fixed position for profile */
    top: 50px; /* Adjusted to ensure it doesn't overlap with profile link */
    right: 10px;
    width: 0; /* Start with 0 width */
    background-color: #ffffff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    height: auto;
    text-align: center;
    transition: width 0.3s ease; /* Smooth transition for width */
    overflow: hidden; /* Hide overflow when collapsed */
    z-index: 1000; /* Ensure it is on top of other elements */
}

.profile-container.expanded {
    width: 25%; /* Set width to 25% when expanded */
}

.close-btn {
    margin-top: 10px;
    background-color: #f44336;
    color: #fff;
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 0.9em;
}

.close-btn:hover {
    background-color: #d32f2f;
}

.edit-btn {
    margin-top: 10px;
    background-color: #2196F3;
    color: #fff;
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 0.9em;
}

.edit-btn:hover {
    background-color: #1976D2;
}

@keyframes scroll-horizontal {
    0% {
        transform: translateX(100%); /* Start from the right */
    }
    100% {
        transform: translateX(-100%); /* End on the left */
    }
}
</style>
<script>
function toggleProfile() {
    var profileContainer = document.getElementById("profile-container");
    if (profileContainer.style.display === "none" || profileContainer.style.display === "") {
        profileContainer.style.display = "block";
        setTimeout(() => {
            profileContainer.classList.add("expanded"); 
        }, 10);
    } else {
        profileContainer.classList.remove("expanded");
        setTimeout(() => {
            profileContainer.style.display = "none";
        }, 300);
    }
}

function editProfile() {
    alert('Edit profile functionality will go here.');
    
}
</script>
</head>
<body>
	<%
	Users users = (Users) request.getAttribute("users");
	%>
	<div class="scroll-container">
		<div class="scroll-text">
			Welcome <%= users.getFullname() %> ............!
		</div>
	</div>
	<div class="profile-link" onclick="toggleProfile()">View Profile</div>
	<div id="profile-container" class="profile-container">
    <h2>User Profile</h2>
    <table style="width: 100%; border-collapse: collapse; empty-cells: show;">
        <tr>
            <td style="padding: 8px; text-align: left;"><strong>Full Name:</strong></td>
            <td style="padding: 8px;"><%= users.getFullname() %></td>
        </tr>
        <tr>
            <td style="padding: 8px; text-align: left;"><strong>Username:</strong></td>
            <td style="padding: 8px;"><%= users.getUsername() %></td>
        </tr>
        <tr>
            <td style="padding: 8px; text-align: left;"><strong>Email:</strong></td>
            <td style="padding: 8px;"><%= users.getEmail() %></td>
        </tr>
        <tr>
            <td style="padding: 8px; text-align: left;"><strong>Phone:</strong></td>
            <td style="padding: 8px;"><%= users.getPhno() %></td>
        </tr>
        <tr>
            <td style="padding: 8px; text-align: left;"><strong>Address:</strong></td>
            <td style="padding: 8px;"><%= users.getAddress() %></td>
        </tr>
    </table>
    <p><a href="/">Logout</a></p>
    <button class="edit-btn" onclick="editProfile()">Edit</button>
    <button class="close-btn" onclick="toggleProfile()">Close</button>
</div>

</body>
</html>
