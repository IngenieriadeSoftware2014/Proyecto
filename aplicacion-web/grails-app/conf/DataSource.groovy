dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/escuela?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "root"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/alumno?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "root"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/alumno?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "root"
        }
    }
}
