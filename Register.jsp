<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>

<style type="text/css">


.k {
/* 	background-image:url(https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-chlorophytum-spider-plant-plant-1_b45bcc34-3afa-4ae1-a632-3f13d42c2c90_512x683.jpg?v=1634216136);
 */	
  box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px
		-12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px
		12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
    background-color:#ffffff;
    opacity: 0.9;
	width: 520px;
	margin-left: 510px;
	margin-right: 500px;
	margin-top: 20px;
	display: flex;
	flex: row;
	justify-content: center;
	image-repeat: no-repeat;
}

.v {
/* 	background-image:url(https://cdn.shopify.com/s/files/1/0047/9730/0847/products/nurserylive-chlorophytum-spider-plant-plant-1_b45bcc34-3afa-4ae1-a632-3f13d42c2c90_512x683.jpg?v=1634216136);
 */	

 background-color:#c1f7c4;
 image-repeat: no-repeat;
 
}
.t1{
 	padding:20px;

}
</style>
</head>
<body class="v">

<form action="Register" method="post">

	<div class="k">
		<div>
		<div class="t1">
			
				<table >
					<h1>Register</h1>
					<tr>
						<th><label>Name : </label></th>
						<th><input type="text" name="name" required></th>
					</tr>
					<tr>
						<th><label>Email : </label></th>
						<th><input type="text" name="email" required></th>
					</tr>
					<tr>
						<th><label>Phone Number : </label></th>
						<th><input type="text" name="phoneno" required></th>
					</tr>
					<tr>
						<th><label>Create a new Password : </label></th>
						<th><input type="Password" name="password" id="password" onkeyup='check()'required></th>
					</tr>
					<tr>
						<th><label>Re-Enter new Password : </label></th>
						<th><input type="Password" name="repassword"  id="confirm_password" onkeyup='check()'required></th>
						
					</tr>
					<tr>
					<th></th>
				<th>	  <span id='message'></span></th>
					
					</tr>
				</table>
				<p>select your gender</p>
<input type="radio" name="gender" value="Male"> <label>Male</label>
<input type="radio" name="gender" value="Female"> <label>Female</label>
<input type="radio" name="gender" value="Others"> <label>Others</label><br>


				
				<table class="t1">
				<h1 style="font-size:1.5em">Address</h1>
					<tr>
						<th><label><b></b> House.No : </label></th>
						<th><input type="text" name="houseno" style="width:200px" required></th>
					</tr>
					 <tr>
						<th><label>Street/Colony: </label></th>
						<th><input type="text"  name="street" style="width:200px" required></th>
					</tr>
					<tr>
						<th><label>Pincode : </label></th>
						<th><input type="text" name="pincode"  maxlength="6" style="width:200px" required></th>
					</tr>
					</table>
		
			<label for="inputCountry">Country</label> <select  name="country"
						class="form-control " id="inputCountry">
						<!-- <option   required>Country</option> -->
						<option name="country" value="India" required>India</option>
					</select>
			<label for="inputState">State</label> <select  name="state" class="form-control"
						id="inputState" required>

						<option name="state" value="SelectState">Select State</option>
						<option name="state" value="Andhra Pradesh">Andhra Pradesh</option>
						<option  name="state"value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option  name="state"value="Assam">Assam</option>
                        <option  name="state" value="Bihar">Bihar</option>
                        <option name="state" value="Chhattisgarh">Chhattisgarh</option>
                        <option  name="state"value="Goa">Goa</option>
                        <option  name="state"value="Gujarat">Gujarat</option>
                        <option name="state" value="Haryana">Haryana</option>
                        <option name="state" value="Himachal Pradesh">Himachal Pradesh</option>
                        <option  name="state"value="Jammu and Kashmir">Jammu and Kashmir</option>
                        <option  name="state"value="Jharkhand">Jharkhand</option>
                        <option name="state" value="Karnataka">Karnataka</option>
                        <option  name="state"value="Kerala">Kerala</option>
                        <option name="state" value="Madya Pradesh">Madya Pradesh</option>
                        <option name="state" value="Maharashtra">Maharashtra</option>
                        <option  name="state"value="Manipur">Manipur</option>
                        <option  name="state"value="Meghalaya">Meghalaya</option>
                        <option name="state" value="Mizoram">Mizoram</option>
                        <option  name="state"value="Nagaland">Nagaland</option>
                        <option  name="state"value="Orissa">Orissa</option>
                        <option  name="state"value="Punjab">Punjab</option>
                        <option  name="state"value="Rajasthan">Rajasthan</option>
                        <option  name="state"value="Sikkim">Sikkim</option>
                        <option  name="state"value="Tamil Nadu">Tamil Nadu</option> -->
						<option name="state" value="Telangana">Telangana</option>
						 <option  name="state"value="Tripura">Tripura</option>
                        <option  name="state"value="Uttaranchal">Uttaranchal</option>
                        <option  name="state"value="Uttar Pradesh">Uttar Pradesh</option>
                        <option  name="state"value="West Bengal">West Bengal</option>
                        <option disabled style="background-color:#aaa; color:#fff">UNION Territories</option>
                        <option  name="state"value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                        <option  name="state"value="Chandigarh">Chandigarh</option>
                        <option  name="state"value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                        <option  name="state"value="Daman and Diu">Daman and Diu</option>
                        <option name="state" value="Delhi">Delhi</option>
                        <option  name="state"value="Lakshadeep">Lakshadeep</option>
                        <option name="state" value="Pondicherry">Pondicherry</option>
					</select>
					<!-- </div> -->
					<!-- <div class="form-group col-md-4"> -->
					<label for="inputDistrict">District</label> <select
						name="district" class="form-control" id="inputDistrict">	
						<option  value="">-- select one --</option><br>
			<br> <input type="submit" value="Register">
						<a href="Login.jsp">Login</a>
	</select>
	</div>					

</div>				

</div>

						</form>
		</div>	
			
			
			<script>
		var AndhraPradesh = [ "Anantapur", "Chittoor", "East Godavari",
				"Guntur", "Kadapa", "Krishna", "Kurnool", "Prakasam",
				"Nellore", "Srikakulam", "Visakhapatnam", "Vizianagaram",
				"West Godavari" ];
		var ArunachalPradesh = [ "Anjaw", "Changlang", "Dibang Valley",
				"East Kameng", "East Siang", "Kra Daadi", "Kurung Kumey",
				"Lohit", "Longding", "Lower Dibang Valley", "Lower Subansiri",
				"Namsai", "Papum Pare", "Siang", "Tawang", "Tirap",
				"Upper Siang", "Upper Subansiri", "West Kameng", "West Siang",
				"Itanagar" ];
		var Assam = [ "Baksa", "Barpeta", "Biswanath", "Bongaigaon", "Cachar",
				"Charaideo", "Chirang", "Darrang", "Dhemaji", "Dhubri",
				"Dibrugarh", "Goalpara", "Golaghat", "Hailakandi", "Hojai",
				"Jorhat", "Kamrup Metropolitan", "Kamrup (Rural)",
				"Karbi Anglong", "Karimganj", "Kokrajhar", "Lakhimpur",
				"Majuli", "Morigaon", "Nagaon", "Nalbari", "Dima Hasao",
				"Sivasagar", "Sonitpur", "South Salmara Mankachar", "Tinsukia",
				"Udalguri", "West Karbi Anglong" ];
		var Bihar = [ "Araria", "Arwal", "Aurangabad", "Banka", "Begusarai",
				"Bhagalpur", "Bhojpur", "Buxar", "Darbhanga", "East Champaran",
				"Gaya", "Gopalganj", "Jamui", "Jehanabad", "Kaimur", "Katihar",
				"Khagaria", "Kishanganj", "Lakhisarai", "Madhepura",
				"Madhubani", "Munger", "Muzaffarpur", "Nalanda", "Nawada",
				"Patna", "Purnia", "Rohtas", "Saharsa", "Samastipur", "Saran",
				"Sheikhpura", "Sheohar", "Sitamarhi", "Siwan", "Supaul",
				"Vaishali", "West Champaran" ];
		var Chhattisgarh = [ "Balod", "Baloda Bazar", "Balrampur", "Bastar",
				"Bemetara", "Bijapur", "Bilaspur", "Dantewada", "Dhamtari",
				"Durg", "Gariaband", "Janjgir Champa", "Jashpur", "Kabirdham",
				"Kanker", "Kondagaon", "Korba", "Koriya", "Mahasamund",
				"Mungeli", "Narayanpur", "Raigarh", "Raipur", "Rajnandgaon",
				"Sukma", "Surajpur", "Surguja" ];
		var Goa = [ "North Goa", "South Goa" ];
		var Gujarat = [ "Ahmedabad", "Amreli", "Anand", "Aravalli",
				"Banaskantha", "Bharuch", "Bhavnagar", "Botad",
				"Chhota Udaipur", "Dahod", "Dang", "Devbhoomi Dwarka",
				"Gandhinagar", "Gir Somnath", "Jamnagar", "Junagadh", "Kheda",
				"Kutch", "Mahisagar", "Mehsana", "Morbi", "Narmada", "Navsari",
				"Panchmahal", "Patan", "Porbandar", "Rajkot", "Sabarkantha",
				"Surat", "Surendranagar", "Tapi", "Vadodara", "Valsad" ];
		var Haryana = [ "Ambala", "Bhiwani", "Charkhi Dadri", "Faridabad",
				"Fatehabad", "Gurugram", "Hisar", "Jhajjar", "Jind", "Kaithal",
				"Karnal", "Kurukshetra", "Mahendragarh", "Mewat", "Palwal",
				"Panchkula", "Panipat", "Rewari", "Rohtak", "Sirsa", "Sonipat",
				"Yamunanagar" ];
		var HimachalPradesh = [ "Bilaspur", "Chamba", "Hamirpur", "Kangra",
				"Kinnaur", "Kullu", "Lahaul Spiti", "Mandi", "Shimla",
				"Sirmaur", "Solan", "Una" ];
		var JammuKashmir = [ "Anantnag", "Bandipora", "Baramulla", "Budgam",
				"Doda", "Ganderbal", "Jammu", "Kargil", "Kathua", "Kishtwar",
				"Kulgam", "Kupwara", "Leh", "Poonch", "Pulwama", "Rajouri",
				"Ramban", "Reasi", "Samba", "Shopian", "Srinagar", "Udhampur" ];
		var Jharkhand = [ "Bokaro", "Chatra", "Deoghar", "Dhanbad", "Dumka",
				"East Singhbhum", "Garhwa", "Giridih", "Godda", "Gumla",
				"Hazaribagh", "Jamtara", "Khunti", "Koderma", "Latehar",
				"Lohardaga", "Pakur", "Palamu", "Ramgarh", "Ranchi",
				"Sahebganj", "Seraikela Kharsawan", "Simdega", "West Singhbhum" ];
		var Karnataka = [ "Bagalkot", "Bangalore Rural", "Bangalore Urban",
				"Belgaum", "Bellary", "Bidar", "Vijayapura", "Chamarajanagar",
				"Chikkaballapur", "Chikkamagaluru", "Chitradurga",
				"Dakshina Kannada", "Davanagere", "Dharwad", "Gadag",
				"Gulbarga", "Hassan", "Haveri", "Kodagu", "Kolar", "Koppal",
				"Mandya", "Mysore", "Raichur", "Ramanagara", "Shimoga",
				"Tumkur", "Udupi", "Uttara Kannada", "Yadgir" ];
		var Kerala = [ "Alappuzha", "Ernakulam", "Idukki", "Kannur",
				"Kasaragod", "Kollam", "Kottayam", "Kozhikode", "Malappuram",
				"Palakkad", "Pathanamthitta", "Thiruvananthapuram", "Thrissur",
				"Wayanad" ];
		var MadhyaPradesh = [ "Agar Malwa", "Alirajpur", "Anuppur",
				"Ashoknagar", "Balaghat", "Barwani", "Betul", "Bhind",
				"Bhopal", "Burhanpur", "Chhatarpur", "Chhindwara", "Damoh",
				"Datia", "Dewas", "Dhar", "Dindori", "Guna", "Gwalior",
				"Harda", "Hoshangabad", "Indore", "Jabalpur", "Jhabua",
				"Katni", "Khandwa", "Khargone", "Mandla", "Mandsaur", "Morena",
				"Narsinghpur", "Neemuch", "Panna", "Raisen", "Rajgarh",
				"Ratlam", "Rewa", "Sagar", "Satna", "Sehore", "Seoni",
				"Shahdol", "Shajapur", "Sheopur", "Shivpuri", "Sidhi",
				"Singrauli", "Tikamgarh", "Ujjain", "Umaria", "Vidisha" ];
		var Maharashtra = [ "Ahmednagar", "Akola", "Amravati", "Aurangabad",
				"Beed", "Bhandara", "Buldhana", "Chandrapur", "Dhule",
				"Gadchiroli", "Gondia", "Hingoli", "Jalgaon", "Jalna",
				"Kolhapur", "Latur", "Mumbai City", "Mumbai Suburban",
				"Nagpur", "Nanded", "Nandurbar", "Nashik", "Osmanabad",
				"Palghar", "Parbhani", "Pune", "Raigad", "Ratnagiri", "Sangli",
				"Satara", "Sindhudurg", "Solapur", "Thane", "Wardha", "Washim",
				"Yavatmal" ];
		var Manipur = [ "Bishnupur", "Chandel", "Churachandpur", "Imphal East",
				"Imphal West", "Jiribam", "Kakching", "Kamjong", "Kangpokpi",
				"Noney", "Pherzawl", "Senapati", "Tamenglong", "Tengnoupal",
				"Thoubal", "Ukhrul" ];
		var Meghalaya = [ "East Garo Hills", "East Jaintia Hills",
				"East Khasi Hills", "North Garo Hills", "Ri Bhoi",
				"South Garo Hills", "South West Garo Hills",
				"South West Khasi Hills", "West Garo Hills",
				"West Jaintia Hills", "West Khasi Hills" ];
		var Mizoram = [ "Aizawl", "Champhai", "Kolasib", "Lawngtlai",
				"Lunglei", "Mamit", "Saiha", "Serchhip", "Aizawl", "Champhai",
				"Kolasib", "Lawngtlai", "Lunglei", "Mamit", "Saiha", "Serchhip" ];
		var Nagaland = [ "Dimapur", "Kiphire", "Kohima", "Longleng",
				"Mokokchung", "Mon", "Peren", "Phek", "Tuensang", "Wokha",
				"Zunheboto" ];
		var Odisha = [ "Angul", "Balangir", "Balasore", "Bargarh", "Bhadrak",
				"Boudh", "Cuttack", "Debagarh", "Dhenkanal", "Gajapati",
				"Ganjam", "Jagatsinghpur", "Jajpur", "Jharsuguda", "Kalahandi",
				"Kandhamal", "Kendrapara", "Kendujhar", "Khordha", "Koraput",
				"Malkangiri", "Mayurbhanj", "Nabarangpur", "Nayagarh",
				"Nuapada", "Puri", "Rayagada", "Sambalpur", "Subarnapur",
				"Sundergarh" ];
		var Punjab = [ "Amritsar", "Barnala", "Bathinda", "Faridkot",
				"Fatehgarh Sahib", "Fazilka", "Firozpur", "Gurdaspur",
				"Hoshiarpur", "Jalandhar", "Kapurthala", "Ludhiana", "Mansa",
				"Moga", "Mohali", "Muktsar", "Pathankot", "Patiala",
				"Rupnagar", "Sangrur", "Shaheed Bhagat Singh Nagar",
				"Tarn Taran" ];
		var Rajasthan = [ "Ajmer", "Alwar", "Banswara", "Baran", "Barmer",
				"Bharatpur", "Bhilwara", "Bikaner", "Bundi", "Chittorgarh",
				"Churu", "Dausa", "Dholpur", "Dungarpur", "Ganganagar",
				"Hanumangarh", "Jaipur", "Jaisalmer", "Jalore", "Jhalawar",
				"Jhunjhunu", "Jodhpur", "Karauli", "Kota", "Nagaur", "Pali",
				"Pratapgarh", "Rajsamand", "Sawai Madhopur", "Sikar", "Sirohi",
				"Tonk", "Udaipur" ];
		var Sikkim = [ "East Sikkim", "North Sikkim", "South Sikkim",
				"West Sikkim" ];
		var TamilNadu = [ "Ariyalur", "Chennai", "Coimbatore", "Cuddalore",
				"Dharmapuri", "Dindigul", "Erode", "Kanchipuram",
				"Kanyakumari", "Karur", "Krishnagiri", "Madurai",
				"Nagapattinam", "Namakkal", "Nilgiris", "Perambalur",
				"Pudukkottai", "Ramanathapuram", "Salem", "Sivaganga",
				"Thanjavur", "Theni", "Thoothukudi", "Tiruchirappalli",
				"Tirunelveli", "Tiruppur", "Tiruvallur", "Tiruvannamalai",
				"Tiruvarur", "Vellore", "Viluppuram", "Virudhunagar" ];
		var Telangana = [ "Adilabad", "Bhadradri Kothagudem", "Hyderabad",
				"Jagtial", "Jangaon", "Jayashankar", "Jogulamba", "Kamareddy",
				"Karimnagar", "Khammam", "Komaram Bheem", "Mahabubabad",
				"Mahbubnagar", "Mancherial", "Medak", "Medchal",
				"Nagarkurnool", "Nalgonda", "Nirmal", "Nizamabad",
				"Peddapalli", "Rajanna Sircilla", "Ranga Reddy", "Sangareddy",
				"Siddipet", "Suryapet", "Vikarabad", "Wanaparthy",
				"Warangal Rural", "Warangal Urban", "Yadadri Bhuvanagiri" ];
		var Tripura = [ "Dhalai", "Gomati", "Khowai", "North Tripura",
				"Sepahijala", "South Tripura", "Unakoti", "West Tripura" ];
		var UttarPradesh = [ "Agra", "Aligarh", "Allahabad", "Ambedkar Nagar",
				"Amethi", "Amroha", "Auraiya", "Azamgarh", "Baghpat",
				"Bahraich", "Ballia", "Balrampur", "Banda", "Barabanki",
				"Bareilly", "Basti", "Bhadohi", "Bijnor", "Budaun",
				"Bulandshahr", "Chandauli", "Chitrakoot", "Deoria", "Etah",
				"Etawah", "Faizabad", "Farrukhabad", "Fatehpur", "Firozabad",
				"Gautam Buddha Nagar", "Ghaziabad", "Ghazipur", "Gonda",
				"Gorakhpur", "Hamirpur", "Hapur", "Hardoi", "Hathras",
				"Jalaun", "Jaunpur", "Jhansi", "Kannauj", "Kanpur Dehat",
				"Kanpur Nagar", "Kasganj", "Kaushambi", "Kheri", "Kushinagar",
				"Lalitpur", "Lucknow", "Maharajganj", "Mahoba", "Mainpuri",
				"Mathura", "Mau", "Meerut", "Mirzapur", "Moradabad",
				"Muzaffarnagar", "Pilibhit", "Pratapgarh", "Raebareli",
				"Rampur", "Saharanpur", "Sambhal", "Sant Kabir Nagar",
				"Shahjahanpur", "Shamli", "Shravasti", "Siddharthnagar",
				"Sitapur", "Sonbhadra", "Sultanpur", "Unnao", "Varanasi" ];
		var Uttarakhand = [ "Almora", "Bageshwar", "Chamoli", "Champawat",
				"Dehradun", "Haridwar", "Nainital", "Pauri", "Pithoragarh",
				"Rudraprayag", "Tehri", "Udham Singh Nagar", "Uttarkashi" ];
		var WestBengal = [ "Alipurduar", "Bankura", "Birbhum", "Cooch Behar",
				"Dakshin Dinajpur", "Darjeeling", "Hooghly", "Howrah",
				"Jalpaiguri", "Jhargram", "Kalimpong", "Kolkata", "Malda",
				"Murshidabad", "Nadia", "North 24 Parganas",
				"Paschim Bardhaman", "Paschim Medinipur", "Purba Bardhaman",
				"Purba Medinipur", "Purulia", "South 24 Parganas",
				"Uttar Dinajpur" ];
		var AndamanNicobar = [ "Nicobar", "North Middle Andaman",
				"South Andaman" ];
		var Chandigarh = [ "Chandigarh" ];
		var DadraHaveli = [ "Dadra Nagar Haveli" ];
		var DamanDiu = [ "Daman", "Diu" ];
		var Delhi = [ "Central Delhi", "East Delhi", "New Delhi",
				"North Delhi", "North East Delhi", "North West Delhi",
				"Shahdara", "South Delhi", "South East Delhi",
				"South West Delhi", "West Delhi" ];
		var Lakshadweep = [ "Lakshadweep" ];
		var Puducherry = [ "Karaikal", "Mahe", "Puducherry", "Yanam" ];

		$("#inputState").change(
				function() {
					var StateSelected = $(this).val();
					var optionsList;
					var htmlString = "";

					switch (StateSelected) {
					case "Andra Pradesh":
						optionsList = AndhraPradesh;
						break;
					case "Arunachal Pradesh":
						optionsList = ArunachalPradesh;
						break;
					case "Assam":
						optionsList = Assam;
						break;
					case "Bihar":
						optionsList = Bihar;
						break;
					case "Chhattisgarh":
						optionsList = Chhattisgarh;
						break;
					case "Goa":
						optionsList = Goa;
						break;
					case "Gujarat":
						optionsList = Gujarat;
						break;
					case "Haryana":
						optionsList = Haryana;
						break;
					case "Himachal Pradesh":
						optionsList = HimachalPradesh;
						break;
					case "Jammu and Kashmir":
						optionsList = JammuKashmir;
						break;
					case "Jharkhand":
						optionsList = Jharkhand;
						break;
					case "Karnataka":
						optionsList = Karnataka;
						break;
					case "Kerala":
						optionsList = Kerala;
						break;
					case "Madya Pradesh":
						optionsList = MadhyaPradesh;
						break;
					case "Maharashtra":
						optionsList = Maharashtra;
						break;
					case "Manipur":
						optionsList = Manipur;
						break;
					case "Meghalaya":
						optionsList = Meghalaya;
						break;
					case "Mizoram":
						optionsList = Mizoram;
						break;
					case "Nagaland":
						optionsList = Nagaland;
						break;
					case "Orissa":
						optionsList = Orissa;
						break;
					case "Punjab":
						optionsList = Punjab;
						break;
					case "Rajasthan":
						optionsList = Rajasthan;
						break;
					case "Sikkim":
						optionsList = Sikkim;
						break;
					case "Tamil Nadu":
						optionsList = TamilNadu;
						break;
					case "Telangana":
						optionsList = Telangana;
						break;
					case "Tripura":
						optionsList = Tripura;
						break;
					case "Uttaranchal":
						optionsList = Uttaranchal;
						break;
					case "Uttar Pradesh":
						optionsList = UttarPradesh;
						break;
					case "West Bengal":
						optionsList = WestBengal;
						break;
					case "Andaman and Nicobar Islands":
						optionsList = AndamanNicobar;
						break;
					case "Chandigarh":
						optionsList = Chandigarh;
						break;
					case "Dadar and Nagar Haveli":
						optionsList = DadraHaveli;
						break;
					case "Daman and Diu":
						optionsList = DamanDiu;
						break;
					case "Delhi":
						optionsList = Delhi;
						break;
					case "Lakshadeep":
						optionsList = Lakshadeep;
						break;
					case "Pondicherry":
						optionsList = Pondicherry;
						break;
					}

					for (var i = 0; i < optionsList.length; i++) {
						htmlString = htmlString
								+ "<option value='"+ optionsList[i] +"'>"
								+ optionsList[i] + "</option>";
					}
					$("#inputDistrict").html(htmlString);

				});
		
		
		var check = function() {
			  if (document.getElementById('password').value ==
			    document.getElementById('confirm_password').value) {
			    document.getElementById('message').style.color = 'green';
			    document.getElementById('message').innerHTML = 'password matching';
			  } else {
			    document.getElementById('message').style.color = 'red';
			    document.getElementById('message').innerHTML = 'password not matching';
			  }
			}	
		
		
		
		
		
		
		
	</script>
			

</body>
</html>