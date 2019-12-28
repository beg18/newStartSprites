	<nav class="navbar">
        <ul class="nav navbar-nav">
            <li><a href="index.php">Home</a></li>
            <li><a href="venuetravel.php">Venue/Travel</a></li>
            <li><a href="schedule.php">Schedule</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Artists <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                    <li><a tabindex="-1" href="artists.php">All artists</a></li>
                    <li class="divider"></li>
                  <li><a tabindex="-1" href="artists.php#Barot_Bellingham">Barot Bellingham</a></li>
                  <li><a tabindex="-1" href="artists.php#Gerard_Donahue">Gerard Donahue</a></li>
                  <li><a tabindex="-1" href="artists.php#Jonathan_Ferrar">Jonathan Ferrar</a></li>
                  <li><a tabindex="-1" href="artists.php#Lorenzo_Garcia">Lorenzo Garcia</a></li>
                  <li><a tabindex="-1" href="artists.php#Hillary_Goldwynn">Hillary Goldwynn</a></li>
                  <li><a tabindex="-1" href="artists.php#Hassum_Harrod">Hassum Harrod</a></li>
                  <li><a tabindex="-1" href="artists.php#Jennifer_Jerome">Jennifer Jerome</a></li>
                  <li><a tabindex="-1" href="artists.php#LaVonne_LaRue">LaVonne LaRue</a></li>
                  <li><a tabindex="-1" href="artists.php#Riley_Rewington">Riley Rewington</a></li>
                  <li><a tabindex="-1" href="artists.php#Constance_Smith">Constance Smith</a></li>
                  <li><a tabindex="-1" href="artists.php#Xhou_Ta">Xhou Ta</a></li>
                  <li><a tabindex="-1" href="artists.php#Richard_Tweed">Richard Tweed</a></li>
                </ul><!-- dropdown menu -->
            </li>
            <li><a href="register.php">Register</a></li>
        </ul><!-- nav -->
    </nav><!-- navbar -->

<script>
//make menus drop automatically
	$('ul.nav li.dropdown').hover(function() {
		$('.dropdown-menu', this).fadeIn();
	}, function() {
		$('.dropdown-menu', this).fadeOut('fast');
	});//hover

//highlight the current nav
	$("#home a:contains('Home')").parent().addClass('active');
	$("#schedule a:contains('Schedule')").parent().addClass('active');
	$("#artists a:contains('Artists')").parent().addClass('active');
	$("#venuetravel a:contains('Venue/Travel')").parent().addClass('active');
	$("#register a:contains('Register')").parent().addClass('active');

</script>

<style>
.navbar .navbar-nav .active {
  background-color: darkgrey;
  a {
    color: white;
  }
}
.navbar {
	margin-bottom: 0;
}
.navbar {
	border-right: none;
	border-left: none;
	border-radius: 0;
}
.navbar .nav>li>.dropdown-menu {
	top: 30px;
}

</style>