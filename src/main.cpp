#include <Arduino.h>

// Include the Arduino Stepper Library
#include <Stepper.h>

#include <secrets.h>
#include <ESP8266WiFi.h>

#define IN1 0 // 12 GPIO0
#define IN2 2 // 11 GPIO2
#define IN3 5 // 14 GPIO5
#define IN4 4 // 13 GPIO4

// Number of steps per output rotation
const int stepsPerRevolution = 200;



// Create Instance of Stepper library
Stepper myStepper(stepsPerRevolution, IN1,IN2,IN3,IN4);

WiFiServer server(80);

void setup()
{
	// initialize the serial port:
	Serial.begin(115200);
	Serial.println("Start");
	delay(1000);

	pinMode(IN1,OUTPUT);
	pinMode(IN2,OUTPUT);
	pinMode(IN3,OUTPUT);
	pinMode(IN4,OUTPUT);

	Serial.println("Pins configured");

	delay(1000);
	// set the speed at 60 rpm:
	// enable interrupts for rotary encoder pins
	myStepper.setSpeed(60);
	Serial.println("Speed set at 60");

	Serial.println("Starting wifi");
	WiFi.begin(ssid,pass);
	while (WiFi.status() != WL_CONNECTED) {
		delay(500);
		Serial.print(".");
	}
	Serial.println("");
	Serial.println("WiFi connected");

	// Start the server
	server.begin();
	Serial.println("Server started");
	
	// Print the IP address on serial monitor
	Serial.print("Use this URL to connect: ");
	Serial.print("http://");    //URL IP to be typed in mobile/desktop browser
	Serial.print(WiFi.localIP());
	Serial.println("/");
}

void loop() 
{
	  // Check if a client has connected
  WiFiClient client = server.available();
  if (!client) {
    return;
  }
 
  // Wait until the client sends some data
  Serial.println("new client");
  while(!client.available()){
    delay(1);
  }
 
  // Read the first line of the request
  String request = client.readStringUntil('\r');
  Serial.println(request);
  client.flush();

  int forward=1;
 
  if (request.indexOf("/Command=forward") != -1)  { //Move 1 step forward
	myStepper.step(stepsPerRevolution);
  }
  
  if (request.indexOf("/Command=backward") != -1)  { //Move 1 step backwards
	myStepper.step(-stepsPerRevolution);
	forward=0;
  }

  // Return the response
  client.println("HTTP/1.1 200 OK");
  client.println("Content-Type: text/html");
  client.println(""); //  do not forget this one
  client.println("<!DOCTYPE HTML>");
  client.println("<html>");
  client.println("<h1 align=center>Stepper motor controlled over WiFi</h1><br><br>");
  client.print("Stepper motor moving= ");
 
  if(forward == 1) {
    client.print("Forward");
  } else {
    client.print("Backward");
  }
  client.println("<br><br>");
  client.println("<a href=\"/Command=forward\"\"><button>Forward </button></a>");
  client.println("<a href=\"/Command=backward\"\"><button>Backward </button></a><br />");  
  client.println("</html>");
  delay(1);
  Serial.println("Client disonnected");
  Serial.println("");
}