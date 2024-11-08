//Packages
const http = require("http");
const url = require("url");
const mysql = require("mysql2");

import { con } from "./util";

//MySQL Database Connection

const hostname = "127.0.0.1";
const port = 3000;

const server = http
  .createServer((request, response) => {
    //GET parameters (e.g. www.google.com?search=how-to-programming&)
    const getParameters = url.parse(request.url, true).query;

    //SELECT statement variables
    let selectSql = "SELECT year, wins, loses FROM Player_Awards",
      whereStatements = [],
      orderByStatements = [],
      queryParameters = [];

    if (
      typeof getParameters.kershaw !== "undefined" &&
      parseInt(getParameters.kershaw) === 0
    ) {
      whereStatements.push("wins != 'C. Kershaw'");
    }

    if (
      typeof getParameters.no !== "undefined" &&
      parseInt(getParameters.no) === 0
    ) {
      whereStatements.push("loses != 'no'");
    }

    if (typeof getParameters.record !== "undefined") {
      const record = getParameters.record;
      if (record === "ASC") {
        orderByStatements.push("year ASC");
      } else if (record === "DESC") {
        orderByStatements.push("year DESC");
      }
    }

    //Dynamically add WHERE expressions to SELECT statements if needed
    if (whereStatements.length > 0) {
      selectSql = selectSql + " WHERE " + whereStatements.join(" AND ");
    }

    //Dynamically add ORDER BY expressions to SELECT statements if needed
    if (orderByStatements.length > 0) {
      selectSql = selectSql + " ORDER BY " + orderByStatements.join(", ");
    }

    console.log(selectSql);
    con.query(selectSql, queryParameters, function (err, result) {
      if (err) {
        throw err;
      } else {
        response
          .writeHead(200, {
            //HTTP Code 200 = Everything is OK
            "Content-Type": "text/json", //Setting return type of result to JSON
            "Access-Control-Allow-Origin": "*", //Prevent CORS error
          })
          .end(
            JSON.stringify({
              result: 200,
              record: result,
            })
          );
      }
    });
  })
  .listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
  });
