var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Port
  port: 3306,

  // Username
  user: "root",

  // Password
  password: "Ir0cky00",
  database: "bamazon_db"
});

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  displayProduct();
});

function displayProduct() {
  connection.query("SELECT * FROM products", function (err, res) {
    if (err) throw err;
    console.log(res);
    purchasePrompt();
  });
}

function purchasePrompt() {
  inquirer.prompt([{
      name: "ID",
      type: "input",
      message: "What is the Item ID of the product you would like to purchase?",
    },
    {
      name: "quantity",
      type: "input",
      message: "How many would you like?",
    }
  ]).then(function (answers) {
    console.log(answers);
    var itemID = answers.ID;
    var purchQuantity = answers.quantity;
    purchaseItems(itemID, purchQuantity);
  });
};



function purchaseItems(itemID, purchQuantity) {
  connection.query("Select * FROM products WHERE item_id = " + itemID, function (err, res) {
    if (err) {
      console.log(err)
    };
    if (purchQuantity <= res[0].stock_quantity) {
      var totalCost = res[0].price * purchQuantity;
      console.log("Your order is in stock!");
      console.log("The total cost for " + purchQuantity + " " + res[0].product_name + " is " + totalCost + ". Thank you!");

      connection.query("UPDATE products SET stock_quantity = "(stock_quantity - purchQuantity) + " WHERE item_id = " + itemID);
    } else {
      console.log("Uh oh, sorry we dont't have enough " + res[0].product_name + "s to complete your order.");
    };
    displayProduct();
  });
}

// connection.end()

// },

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