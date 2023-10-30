<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication1.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
                <style>
  /* Reset default margin and padding */
  body, h1, h2, h3, p, ul, li {
    margin: 0;
    padding: 0;
  }

  /* Navbar styles */
  .navbar {
    background-color: #333;
    overflow: hidden;
  }

  .navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }

  .navbar a:hover {
    background-color: #ddd;
    color: black;
  }

  /* Center the navbar links */
  .navbar-content {
    display: flex;
    justify-content: center;
  }
  /* Carousel styles */
  .carousel-container {
    width: 80%;
    margin: auto;
    overflow: hidden;
    position: relative;
  }

  .carousel {
    display: flex;
    transition: transform 0.5s ease-in-out;
  }

  .carousel img {
    width: 100%;
    height: auto;
  }

  /* Navigation buttons */
  .carousel-btn {
    cursor: pointer;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    padding: 10px;
    background-color: rgba(0, 0, 0, 0.3);
    color: white;
    font-size: 18px;
    border: none;
    outline: none;
  }

  .prev-btn {
    left: 10px;
  }

  .next-btn {
    right: 10px;
  }
</style>
</head>
<body>
    
        <div>
    <div class="navbar">                    
  <div class="navbar-content">
    <a href="Home.aspx">Home</a>
    <a href="about.aspx">About</a>
    <a href="WebForm2.aspx">User</a>
    <a href="Admin.aspx">Admin</a>
    <a href="Cart.aspx">Cart</a>
   
  </div>
</div>
           

<body>
    
</div>
        <div class="carousel-container">
  <div class="carousel">
    <img src="image1.jpg" alt="Image 1">
    <img src="image2.jpg" alt="Image 2">
    <img src="image3.jpg" alt="Image 3">
    <!-- Add more images as needed -->
  </div>
  
  <button class="carousel-btn prev-btn" onclick="prevSlide()">&#10094;</button>
  <button class="carousel-btn next-btn" onclick="nextSlide()">&#10095;</button>
</div>

<script>
    const carousel = document.querySelector('.carousel');
    const prevBtn = document.querySelector('.prev-btn');
    const nextBtn = document.querySelector('.next-btn');
    let currentIndex = 0;

    function prevSlide() {
        currentIndex = (currentIndex - 1 + carousel.children.length) % carousel.children.length;
        updateCarousel();
    }

    function nextSlide() {
        currentIndex = (currentIndex + 1) % carousel.children.length;
        updateCarousel();
    }

    function updateCarousel() {
        const slideWidth = carousel.children[0].clientWidth;
        carousel.style.transform = `translateX(-${slideWidth * currentIndex}px)`;
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            WELCOME TO CART
            Enter the Name of the place you want to Remove Leave it as it is if you want to Buy 
        </div>
        <div>
            <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ID="GridCart">
                <Columns>
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place"></asp:BoundField>
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Place], [Contact] FROM [TableUser]"></asp:SqlDataSource>
            <asp:TextBox runat="server" ID="TextBox"></asp:TextBox>
            
            &nbsp;<asp:Button runat="server" Text="Remove" OnClick="Unnamed1_Click"></asp:Button></div>
        <div>&nbsp;<asp:Label runat="server" ID="label"></asp:Label></div>
    </form>
</body>
</html>
