var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Ir0cky00",
  database: "bamazon_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  purchaseProduct();
});

function purchaseProduct() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.log(res); 
    inquirer
    .prompt([
    {
      name: "buy",
      type: "list",
      message: "What is the Item ID of the product you would like to purchase?",
      choices: ["Item1", "Item2", "Item3", "Item4", "Item5", "Item6", "Item7", "Item8", "Item9", "Item10", ]
    },
    {
      name: "quantity",
      type: "number",
      message: "How many would you like?"
    }])
    connection.end();
  });
}

//     .then(function(answer) {
//       // based on their answer, either call the bid or the post functions
//       if (answer.postOrBid === "POST") {
//         postAuction();
//       }
//       else if(answer.postOrBid === "BID") {
//         bidAuction();
//       } else{
//         connection.end();
//       }
//     });

//   }
  
