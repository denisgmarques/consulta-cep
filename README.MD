# Restoring MySQL database

* On MYSQL Workbench...
    * Data Import/Restore...
        * Import from disk tab...
            * Import from self-contained file...
                * [...] Button and select file ```BASE-ESTADOS-CIDADES-BAIRROS-CEPS-LOGRADOUROS/cep_2009_pg/Mysql/consultacep.sql```

# Database Connection

Maybe you would like to adjust your connection, user and password or database name.

You can do that on ConnectionFactory.java file:

```
	String driverClassName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/consulta_cep";
	String dbUser = "root";
	String dbPwd = "";
```

# Generating War File

On a root project folder
```
mvn clean install
```
War file will generate on ```target``` folder.

# Deploying application

You could use a Wildfly AppServer or a Tomcat container to deploy application war.

# Testing

On your web browser put this URL:

```http://localhost:8080/cep/consulta/01311936```
